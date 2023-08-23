import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class FCMDataSource {
  Future<void> init();
  Future<bool> permission();
  Future<String?> get fcmToken;

  @pragma('vm:entry-point')
  static Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    /// TODO: write code
    debugPrint("background working");
  }
}

class FCMDataSourceImpl implements FCMDataSource {
  final FirebaseMessaging fcm;
  final FlutterLocalNotificationsPlugin local;

  const FCMDataSourceImpl({required this.fcm, required this.local});

  @override
  Future<void> init() async {
    /// setting device
    if (Platform.isAndroid) {
      /// local For Android
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings("@mipmap/ic_launcher");
      const InitializationSettings initializationSettings =
          InitializationSettings(android: initializationSettingsAndroid);
      await local.initialize(initializationSettings);
    } else if (Platform.isIOS) {
      /// local For iOS
      await fcm.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    /// setting background
    FirebaseMessaging.onBackgroundMessage(FCMDataSource.firebaseMessagingBackgroundHandler);

    /// setting foreground
    FirebaseMessaging.onMessage.listen(_requestNotification);
  }

  void _requestNotification(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    if (notification != null && android != null) {
      const AndroidNotificationDetails details = AndroidNotificationDetails(
        'channel_id',
        'channel_name',
        channelDescription: 'channel_description',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
      );
      const NotificationDetails notificationDetails = NotificationDetails(android: details);

      await local.show(message.hashCode, message.notification!.title, message.notification!.body, notificationDetails, payload: message.notification!.title);
    } else {
      /// TODO Write code
    }
  }

  @override
  Future<bool> permission() async {
    final result = await local.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
    NotificationSettings settings = await fcm.requestPermission();
    return settings.authorizationStatus == AuthorizationStatus.authorized && result != null && result;
  }

  @override
  Future<String?> get fcmToken => fcm.getToken();
}
