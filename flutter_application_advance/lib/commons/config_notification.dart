import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ConfigNotification {
  AwesomeNotifications awesomeNotifications = AwesomeNotifications();
  void initialNotification() async {
    await awesomeNotifications.initialize(
        null,
        [
          NotificationChannel(
            channelKey: 'notif',
            channelName: 'Notif',
            channelDescription: 'Test Notification',
            defaultColor: Colors.blueAccent,
            importance: NotificationImportance.High,
          )
        ],
        debug: true);
  }

  void showNotification(String title, String body) async {
    await awesomeNotifications.createNotification(
        content: NotificationContent(
            id: -1, channelKey: 'notif', title: title, body: body));
  }
}