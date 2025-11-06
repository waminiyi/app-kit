import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const SUPABASE_URL = Deno.env.get('SUPABASE_URL')!
const SUPABASE_SERVICE_ROLE_KEY = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
const FCM_SERVER_KEY = Deno.env.get('FCM_SERVER_KEY')!

interface NotificationPayload {
  userId: string
  title: string
  body: string
  data?: Record<string, string>
}

serve(async (req) => {
  try {
    const { userId, title, body, data }: NotificationPayload = await req.json()

    // Get user's FCM token from database
    const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY)

    const { data: userData, error } = await supabase
      .from('user_tokens')
      .select('fcm_token')
      .eq('user_id', userId)
      .single()

    if (error || !userData?.fcm_token) {
      throw new Error('FCM token not found')
    }

    // Send FCM notification
    const fcmResponse = await fetch('https://fcm.googleapis.com/fcm/send', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `key=${FCM_SERVER_KEY}`,
      },
      body: JSON.stringify({
        to: userData.fcm_token,
        notification: { title, body },
        data: data || {},
      }),
    })

    const fcmResult = await fcmResponse.json()

    return new Response(
      JSON.stringify({ success: true, result: fcmResult }),
      { headers: { 'Content-Type': 'application/json' } }
    )
  } catch (error) {
    return new Response(
      JSON.stringify({ error: error.message }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    )
  }
})