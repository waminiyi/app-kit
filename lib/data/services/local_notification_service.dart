import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import '../../core/utils/app_logger.dart';

part 'local_notification_service.g.dart';

@riverpod
LocalNotificationService localNotificationService(LocalNotificationServiceRef ref) {
  return LocalNotificationService();
}

class LocalNotificationService {
  final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  Function(NotificationResponse)? onNotificationTap;

  Future<void> initialize({
    Function(NotificationResponse)? onNotificationTap,
  }) async {
    this.onNotificationTap = onNotificationTap;

    // Initialize timezone
    tz.initializeTimeZones();

    // Android settings
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS settings
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _plugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationResponse,
    );

    AppLogger.i('Local notifications initialized');
  }

  void _onNotificationResponse(NotificationResponse response) {
    AppLogger.i('Local notification tapped: ${response.payload}');
    onNotificationTap?.call(response);
  }

  // Show instant notification
  Future<void> showNotification({
    int? id,
    required String title,
    required String body,
    String? payload,
    NotificationDetails? details,
  }) async {
    final notificationId = id ?? DateTime.now().millisecondsSinceEpoch.remainder(100000);

    await _plugin.show(
      notificationId,
      title,
      body,
      details ?? _defaultNotificationDetails(),
      payload: payload,
    );

    AppLogger.i('Notification shown: $title');
  }

  // Schedule notification
  Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDate,
    String? payload,
    NotificationDetails? details,
  }) async {
    await _plugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(scheduledDate, tz.local),
      details ?? _defaultNotificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      payload: payload,
    );

    AppLogger.i('Notification scheduled: $title at $scheduledDate');
  }

  // Schedule repeating notification
  Future<void> scheduleRepeatingNotification({
    required int id,
    required String title,
    required String body,
    required RepeatInterval repeatInterval,
    String? payload,
    NotificationDetails? details,
  }) async {
    await _plugin.periodicallyShow(
      id,
      title,
      body,
      repeatInterval,
      details ?? _defaultNotificationDetails(),
      payload: payload,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );

    AppLogger.i('Repeating notification scheduled: $title');
  }

  // Schedule daily notification at specific time
  Future<void> scheduleDailyNotification({
    required int id,
    required String title,
    required String body,
    required DateTime time,
    String? payload,
    NotificationDetails? details,
  }) async {
    await _plugin.zonedSchedule(
      id,
      title,
      body,
      _nextInstanceOfTime(time),
      details ?? _defaultNotificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
      payload: payload,
    );

    AppLogger.i('Daily notification scheduled: $title at ${time.hour}:${time.minute}');
  }

  // Cancel notification
  Future<void> cancelNotification(int id) async {
    await _plugin.cancel(id);
    AppLogger.i('Notification cancelled: $id');
  }

  // Cancel all notifications
  Future<void> cancelAllNotifications() async {
    await _plugin.cancelAll();
    AppLogger.i('All notifications cancelled');
  }

  // Get pending notifications
  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    return await _plugin.pendingNotificationRequests();
  }

  // Get active notifications
  Future<List<ActiveNotification>> getActiveNotifications() async {
    final List<ActiveNotification> activeNotifications =
    await _plugin.getActiveNotifications();
    return activeNotifications ?? [];
  }

  // Default notification details
  NotificationDetails _defaultNotificationDetails() {
    const androidDetails = AndroidNotificationDetails(
      'default_channel',
      'Default Notifications',
      channelDescription: 'Default notification channel',
      importance: Importance.high,
      priority: Priority.high,
      showWhen: true,
      enableVibration: true,
      playSound: true,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    return const NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
  }

  // Custom notification details with different styles
  NotificationDetails customNotificationDetails({
    String? channelId,
    String? channelName,
    String? channelDescription,
    Importance? importance,
    Priority? priority,
    String? sound,
    bool enableVibration = true,
    bool playSound = true,
    AndroidNotificationStyle? style,
    String? largeIcon,
    String? bigPicture,
  }) {
    final androidDetails = AndroidNotificationDetails(
      channelId ?? 'custom_channel',
      channelName ?? 'Custom Notifications',
      channelDescription: channelDescription ?? 'Custom notification channel',
      importance: importance ?? Importance.high,
      priority: priority ?? Priority.high,
      showWhen: true,
      enableVibration: enableVibration,
      playSound: playSound,
      sound: sound != null ? RawResourceAndroidNotificationSound(sound) : null,
      largeIcon: largeIcon != null ? DrawableResourceAndroidBitmap(largeIcon) : null,
      styleInformation: bigPicture != null
          ? BigPictureStyleInformation(
        FilePathAndroidBitmap(bigPicture),
        contentTitle: channelName,
      )
          : null,
    );

    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    return NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
  }

  // Helper: Calculate next instance of a specific time
  tz.TZDateTime _nextInstanceOfTime(DateTime time) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
      time.second,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }
}