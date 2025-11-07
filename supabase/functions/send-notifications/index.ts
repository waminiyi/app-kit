import { createClient } from 'npm:@supabase/supabase-js@2'
import { JWT } from 'npm:google-auth-library@9'
import serviceAccount from '../service-account.json' with { type: 'json' }

// Constants - Sender/Receiver IDs
const ADMIN_SENDER_ID = 'ADMIN'
const ALL_USERS_RECEIVER_ID = 'ALL'

// Constants - Database
const USERS_TABLE = 'users'
const NOTIFICATIONS_TABLE = 'notifications'
const FCM_TOKEN_FIELD = 'fcm_token'
const USER_ID_FIELD = 'id'

// Constants - Topics
const ALL_USERS_TOPIC = 'all_users'

// Constants - Firebase
const FCM_API_BASE_URL = 'https://fcm.googleapis.com/v1/projects'
const FCM_SCOPE = 'https://www.googleapis.com/auth/firebase.messaging'

// Constants - Error Messages
const ERROR_MISSING_SENDER_ID = 'Missing senderId parameter'
const ERROR_MISSING_RECEIVER_ID = 'Missing receiverId parameter'
const ERROR_MISSING_NOTIFICATION = 'Missing notification parameter'
const ERROR_UNAUTHORIZED_SENDER = 'Unauthorized sender'
const ERROR_FCM_TOKEN_NOT_FOUND = 'FCM token not found for receiver'
const ERROR_ONLY_ADMIN_BROADCAST = 'Only admin can send notifications to topics'

// Constants - Log Messages
const LOG_RECEIVED_REQUEST = '📥 Received request:'
const LOG_SENDING_TO_USER = '👤 Sending from'
const LOG_SENDING_TO_TOPIC = '📢 Sending from'
const LOG_FCM_TOKEN_FOUND = '✅ FCM token found, sending notification'
const LOG_FCM_TOKEN_NOT_FOUND = '❌ FCM token not found for user:'
const LOG_BROADCAST_SENT = '✅ Topic notification sent:'
const LOG_ERROR = '❌ Error processing request:'
const LOG_DB_SAVE_FAILED = '⚠️ Failed to save notification to database:'

// Notification types
const NOTIFICATION_TYPES = {
  USER_MESSAGE: 'user_message',
  ADMIN_ANNOUNCEMENT: 'admin_announcement',
  FEATURE_UPDATE: 'feature_update',
  SYSTEM_ALERT: 'system_alert',
  GENERAL: 'general',
} as const

// Interface matching AppNotification model
interface AppNotification {
  title: string
  body: string
  type: string
  imageUrl?: string
  payload?: string
  scheduledTime?: string
}

interface NotificationRequest {
  senderId: string // User ID or 'ADMIN'
  receiverId: string // User ID or 'ALL' or topic name
  notification: AppNotification
  topic?: string // Optional: specific topic to send to
}

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
)

Deno.serve(async (req) => {
  try {
    const payload: NotificationRequest = await req.json()

    console.log(LOG_RECEIVED_REQUEST, JSON.stringify(payload, null, 2))

    // Validate request
    if (!payload.senderId) {
      throw new Error(ERROR_MISSING_SENDER_ID)
    }

    if (!payload.receiverId) {
      throw new Error(ERROR_MISSING_RECEIVER_ID)
    }

    if (!payload.notification) {
      throw new Error(ERROR_MISSING_NOTIFICATION)
    }

    // Verify sender authorization (unless admin)
    if (payload.senderId !== ADMIN_SENDER_ID) {
      await verifySenderAuthorization(payload.senderId)
    }

    // Send notification based on receiver or topic
    if (payload.topic) {
      return await sendNotificationToTopic(payload)
    } else if (payload.receiverId === ALL_USERS_RECEIVER_ID) {
      return await sendNotificationToTopic(payload, ALL_USERS_TOPIC)
    } else {
      return await sendNotificationToUser(payload)
    }
  } catch (error) {
    console.error(LOG_ERROR, error)
    return new Response(
      JSON.stringify({
        success: false,
        error: error.message,
        stack: error.stack,
      }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    )
  }
})

/**
 * Verify sender is authorized (user exists and is active)
 */
async function verifySenderAuthorization(senderId: string) {
  const { data, error } = await supabase
    .from(USERS_TABLE)
    .select(USER_ID_FIELD)
    .eq(USER_ID_FIELD, senderId)
    .single()

  if (error || !data) {
    throw new Error(ERROR_UNAUTHORIZED_SENDER)
  }
}

/**
 * Send notification to a specific user
 */
async function sendNotificationToUser(payload: NotificationRequest) {
  console.log(`${LOG_SENDING_TO_USER} ${payload.senderId} to user: ${payload.receiverId}`)

  // Get receiver's FCM token
  const { data, error } = await supabase
    .from(USERS_TABLE)
    .select(FCM_TOKEN_FIELD)
    .eq(USER_ID_FIELD, payload.receiverId)
    .single()

  if (error || !data?.fcm_token) {
    console.error(LOG_FCM_TOKEN_NOT_FOUND, payload.receiverId)
    throw new Error(ERROR_FCM_TOKEN_NOT_FOUND)
  }

  console.log(LOG_FCM_TOKEN_FOUND)

  // Save notification to database
  await saveNotificationToDatabase(payload)

  // Send FCM notification
  const result = await sendFCMNotification(data.fcm_token, payload.notification, {
    sender_id: payload.senderId,
    receiver_id: payload.receiverId,
  })

  return createResponse(result)
}

/**
 * Send notification to a topic (e.g., all_users, premium_users, etc.)
 */
async function sendNotificationToTopic(payload: NotificationRequest, topicOverride?: string) {
  const topicName = topicOverride || payload.topic || ALL_USERS_TOPIC

  console.log(`${LOG_SENDING_TO_TOPIC} ${payload.senderId} to topic: ${topicName}`)

  // Only ADMIN can send to topics
  if (payload.senderId !== ADMIN_SENDER_ID) {
    throw new Error(ERROR_ONLY_ADMIN_BROADCAST)
  }

  // Save notification to database
  await saveNotificationToDatabase(payload)

  // Send to specified topic
  const result = await sendFCMNotificationToTopic(topicName, payload.notification, {
    sender_id: payload.senderId,
    receiver_id: payload.receiverId || ALL_USERS_RECEIVER_ID,
    topic: topicName,
  })

  console.log(LOG_BROADCAST_SENT, result)

  return createResponse(result)
}

/**
 * Save notification to database for history
 */
async function saveNotificationToDatabase(payload: NotificationRequest) {
  const { error } = await supabase.from(NOTIFICATIONS_TABLE).insert({
    sender_id: payload.senderId,
    receiver_id: payload.receiverId,
    title: payload.notification.title,
    body: payload.notification.body,
    type: payload.notification.type,
    image_url: payload.notification.imageUrl,
    payload: payload.notification.payload,
    scheduled_time: payload.notification.scheduledTime || new Date().toISOString(),
    sent_at: new Date().toISOString(),
    is_read: false,
  })

  if (error) {
    console.error(LOG_DB_SAVE_FAILED, error)
    // Don't throw - we still want to send the FCM notification
  }
}

/**
 * Send FCM notification to a specific token
 */
async function sendFCMNotification(
  fcmToken: string,
  notification: AppNotification,
  extraData?: Record<string, string>
) {
  const accessToken = await getAccessToken({
    clientEmail: serviceAccount.client_email,
    privateKey: serviceAccount.private_key,
  })

  const message = buildFCMMessage(notification, fcmToken, undefined, extraData)

  const res = await fetch(
    `${FCM_API_BASE_URL}/${serviceAccount.project_id}/messages:send`,
    {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
      body: JSON.stringify({ message }),
    }
  )

  const resData = await res.json()

  if (res.status < 200 || res.status > 299) {
    throw new Error(`FCM error: ${JSON.stringify(resData)}`)
  }

  return { success: true, messageId: resData.name }
}

/**
 * Send FCM notification to a topic
 */
async function sendFCMNotificationToTopic(
  topic: string,
  notification: AppNotification,
  extraData?: Record<string, string>
) {
  const accessToken = await getAccessToken({
    clientEmail: serviceAccount.client_email,
    privateKey: serviceAccount.private_key,
  })

  const message = buildFCMMessage(notification, undefined, topic, extraData)

  const res = await fetch(
    `${FCM_API_BASE_URL}/${serviceAccount.project_id}/messages:send`,
    {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
      body: JSON.stringify({ message }),
    }
  )

  const resData = await res.json()

  if (res.status < 200 || res.status > 299) {
    throw new Error(`FCM error: ${JSON.stringify(resData)}`)
  }

  return { success: true, messageId: resData.name }
}

/**
 * Build FCM message payload
 */
function buildFCMMessage(
  notification: AppNotification,
  token?: string,
  topic?: string,
  extraData?: Record<string, string>
) {
  const message: any = {
    notification: {
      title: notification.title,
      body: notification.body,
    },
    data: {
      type: notification.type,
      scheduled_time: notification.scheduledTime || new Date().toISOString(),
      ...extraData,
    },
  }

  // Add image if available
  if (notification.imageUrl) {
    message.notification.image = notification.imageUrl
  }

  // Add payload if available
  if (notification.payload) {
    message.data.payload = notification.payload
  }

  // Set destination (token or topic)
  if (token) {
    message.token = token
  } else if (topic) {
    message.topic = topic
  }

  return message
}

/**
 * Get Firebase access token
 */
const getAccessToken = ({
  clientEmail,
  privateKey,
}: {
  clientEmail: string
  privateKey: string
}): Promise<string> => {
  return new Promise((resolve, reject) => {
    const jwtClient = new JWT({
      email: clientEmail,
      key: privateKey,
      scopes: [FCM_SCOPE],
    })
    jwtClient.authorize((err, tokens) => {
      if (err) {
        reject(err)
        return
      }
      resolve(tokens!.access_token!)
    })
  })
}

/**
 * Create HTTP response
 */
function createResponse(data: any) {
  return new Response(JSON.stringify(data), {
    headers: { 'Content-Type': 'application/json' },
  })
}
