import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsService {
  static final _notificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> setupNotificationChannel() async {
    const channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'Used for high importance notifications.',
      importance: Importance.high,
    );

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }
}
