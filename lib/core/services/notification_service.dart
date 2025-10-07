//
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:logger/logger.dart';
//
// class NotificationService {
//   final FirebaseMessaging _fcm = FirebaseMessaging.instance;
//   final FlutterLocalNotificationsPlugin _localNotifications =
//   FlutterLocalNotificationsPlugin();
//   final Logger _logger = Logger();
//
//   Future<void> initialize() async {
//     // Request permission
//     NotificationSettings settings = await _fcm.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//       provisional: false,
//     );
//
//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       _logger.i('User granted notification permission');
//     } else {
//       _logger.w('User declined notification permission');
//     }
//
//     // Initialize local notifications
//     const AndroidInitializationSettings androidSettings =
//     AndroidInitializationSettings('@mipmap/ic_launcher');
//
//     const DarwinInitializationSettings iosSettings =
//     DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//     );
//
//     const InitializationSettings initSettings = InitializationSettings(
//       android: androidSettings,
//       iOS: iosSettings,
//     );
//
//     await _localNotifications.initialize(
//       initSettings,
//       onDidReceiveNotificationResponse: _onNotificationTapped,
//     );
//
//     // Handle foreground messages
//     FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
//
//     // Handle background messages
//     FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);
//
//     // Get FCM token
//     final token = await _fcm.getToken();
//     if (token != null) {
//       _logger.i('FCM Token: $token');
//       // TODO: Send token to backend
//     }
//
//     // Listen to token refresh
//     _fcm.onTokenRefresh.listen((newToken) {
//       _logger.i('FCM Token refreshed: $newToken');
//       // TODO: Send new token to backend
//     });
//   }
//
//   Future<void> _handleForegroundMessage(RemoteMessage message) async {
//     _logger.i('Foreground message: ${message.messageId}');
//
//     final notification = message.notification;
//     final android = message.notification?.android;
//
//     if (notification != null && android != null) {
//       await _showLocalNotification(
//         title: notification.title ?? '',
//         body: notification.body ?? '',
//         payload: message.data.toString(),
//       );
//     }
//   }
//
//   void _handleNotificationTap(RemoteMessage message) {
//     _logger.i('Notification tapped: ${message.messageId}');
//     // TODO: Navigate to specific screen based on message data
//   }
//
//   void _onNotificationTapped(NotificationResponse response) {
//     _logger.i('Local notification tapped: ${response.payload}');
//     // TODO: Handle notification tap
//   }
//
//   Future<void> _showLocalNotification({
//     required String title,
//     required String body,
//     String? payload,
//   }) async {
//     const AndroidNotificationDetails androidDetails =
//     AndroidNotificationDetails(
//       'default_channel',
//       'Default Channel',
//       channelDescription: 'Default notification channel',
//       importance: Importance.high,
//       priority: Priority.high,
//       showWhen: true,
//     );
//
//     const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
//       presentAlert: true,
//       presentBadge: true,
//       presentSound: true,
//     );
//
//     const NotificationDetails details = NotificationDetails(
//       android: androidDetails,
//       iOS: iosDetails,
//     );
//
//     await _localNotifications.show(
//       DateTime.now().millisecond,
//       title,
//       body,
//       details,
//       payload: payload,
//     );
//   }
//
//   Future<String?> getFcmToken() async {
//     return await _fcm.getToken();
//   }
// }
//
// // Background message handler (must be top-level function)
// @pragma('vm:entry-point')
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   Logger().i('Background message: ${message.messageId}');
// }