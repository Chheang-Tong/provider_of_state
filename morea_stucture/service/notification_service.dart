// import 'dart:async';
// import 'dart:convert';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:morea_sale_management/core/constants/env.dart';
// import 'package:morea_sale_management/core/services/global_service.dart';

// import '../constants/app_colors.dart';

// const String notificationChannelId = 'morea_sale_channel';

// class NotificationService {
//   NotificationService._internal();

//   static final NotificationService _instance = NotificationService._internal();

//   factory NotificationService() {
//     return _instance;
//   }

//   StreamSubscription? onMessage;
//   StreamSubscription? onMessageOpenApp;

//   Future<NotificationSettings> getInstance() async {
//     FirebaseMessaging.instance.setAutoInitEnabled(true);

//     //Check user permission
//     NotificationSettings settings = await FirebaseMessaging.instance
//         .requestPermission(
//           alert: true,
//           announcement: false,
//           badge: true,
//           carPlay: false,
//           criticalAlert: false,
//           provisional: false,
//           sound: true,
//         );

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       //Show ios foreground notification
//       FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//         alert: true,
//         sound: true,
//       );

//       //Show android foreground notification
//       //1. Create a new AndroidNotificationChannel instance
//       AndroidNotificationChannel channel = AndroidNotificationChannel(
//         notificationChannelId, // id
//         Env.appName, // title
//         importance: Importance.max,
//         playSound: true,
//       );

//       //Create the channel on the device
//       final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//           FlutterLocalNotificationsPlugin();

//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin
//           >()
//           ?.createNotificationChannel(channel);

//       await flutterLocalNotificationsPlugin.initialize(
//         const InitializationSettings(
//           android: AndroidInitializationSettings("@mipmap/ic_launcher"),
//           iOS: DarwinInitializationSettings(),
//         ),
//         onDidReceiveNotificationResponse: (payload) async {},
//       );

//       try {
//         onMessage?.cancel();
//         onMessageOpenApp?.cancel();
//       } catch (error, stackTrace) {
//         await GlobalService.handleGenericError(error, stackTrace);
//       }

//       onMessage = FirebaseMessaging.onMessage.listen((message) {
//         RemoteNotification? notification = message.notification;
//         AndroidNotification? android = message.notification?.android;

//         if (notification != null && android != null) {
//           flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             const NotificationDetails(
//               android: AndroidNotificationDetails(
//                 notificationChannelId,
//                 'High Importance Notifications',
//                 importance: Importance.max,
//                 priority: Priority.max,
//                 groupAlertBehavior: GroupAlertBehavior.summary,
//                 playSound: true,
//                 color: AppColors.primary,
//               ),
//             ),
//             payload: json.encode(message.data),
//           );
//         }
//       });

//       onMessageOpenApp = FirebaseMessaging.onMessageOpenedApp.listen(
//         onRemoteNotificationMessageClicked,
//       );

//       FirebaseMessaging.instance.getInitialMessage().then(
//         onRemoteNotificationMessageClicked,
//       );
//     }
//     return settings;
//   }

//   //Todo: Implement on message click (background and closed)
//   FutureOr<dynamic> onRemoteNotificationMessageClicked(
//     RemoteMessage? message,
//   ) async {}

//   //Todo: Implement on local message click (foreground)
//   onLocalNotificationClicked(String? payload) async {
//     final Map<String, dynamic> payloadObject = json.decode(payload ?? "");
//   }

//   Future<void> subscribeToTopic(String topicName) async {
//     await FirebaseMessaging.instance.subscribeToTopic(topicName);
//   }

//   Future<void> unSubscribeFromTopic(String topicName) async {
//     await FirebaseMessaging.instance.unsubscribeFromTopic(topicName);
//   }
// }
