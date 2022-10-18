import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  // appNotificationService() {

  //   initNotification();
  // }
  initNotification() async {
    const androdInitSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const initializationSettings = InitializationSettings(
      android: androdInitSettings,
    );
    await _notifications.initialize(
      initializationSettings,
    );
  }

  static Future _notificationDetails() async {
    return const NotificationDetails(
      android: AndroidNotificationDetails("channel id", "channel name",
          channelDescription: "channel description",
          importance: Importance.max),
      // iOS: DarwinNotificationDetails()
    );
  }

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    return _notifications.show(id, title, body, await _notificationDetails(),
        payload: payload);
  }
}
