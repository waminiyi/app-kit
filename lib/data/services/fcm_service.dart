import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/utils/app_logger.dart';
import 'local_notification_service.dart';

part 'fcm_service.g.dart';

@riverpod
FCMService fcmService(Ref ref) {
  return FCMService(ref.watch(localNotificationServiceProvider));
}

// Background message handler
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  AppLogger.i('Background message: ${message.messageId}');
}

class FCMService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  final LocalNotificationService _localNotificationService;

  FCMService(this._localNotificationService);

  Future<void> initialize() async {
    // Request permission
    final settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      AppLogger.i('FCM permission granted');
    } else {
      AppLogger.w('FCM permission denied');
    }

    // Get token
    final token = await _fcm.getToken();
    AppLogger.i('FCM Token: $token');

    // Listen to token refresh
    _fcm.onTokenRefresh.listen((newToken) {
      AppLogger.i('FCM Token refreshed: $newToken');
      // Save token to backend/database here
    });

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle background messages
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    // Handle notification taps (app opened from background/terminated state)
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    // Check if app was opened from a terminated state
    final initialMessage = await _fcm.getInitialMessage();
    if (initialMessage != null) {
      _handleNotificationTap(initialMessage);
    }
  }

  Future<String?> getToken() async {
    return await _fcm.getToken();
  }

  Future<void> deleteToken() async {
    await _fcm.deleteToken();
    AppLogger.i('FCM token deleted');
  }

  void _handleForegroundMessage(RemoteMessage message) {
    AppLogger.i('Foreground message: ${message.messageId}');

    // Show local notification when app is in foreground
    if (message.notification != null) {
      _localNotificationService.showNotification(
        id: message.hashCode, // Use message hashCode as unique ID
        title: message.notification!.title ?? 'Notification',
        body: message.notification!.body ?? '',
        payload: message.data.toString(),
      );
    }
  }

  void _handleNotificationTap(RemoteMessage message) {
    AppLogger.i('Notification tapped: ${message.messageId}');
    AppLogger.i('Message data: ${message.data}');

    // Navigate to specific screen based on message data
    // Example:
    // final route = message.data['route'];
    // if (route != null) {
    //   navigatorKey.currentContext?.push(MaterialPageRoute(builder: (_) => ...));
    // }
  }

  Future<void> subscribeToTopic(String topic) async {
    await _fcm.subscribeToTopic(topic);
    AppLogger.i('Subscribed to topic: $topic');
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _fcm.unsubscribeFromTopic(topic);
    AppLogger.i('Unsubscribed from topic: $topic');
  }
}