import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:push_notifications/push_notifications.dart';
import 'firebase_options.dart';
import 'notification_handler.dart';
import 'navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  PushNotifications.init();
  NotificationHandler.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      home: const Scaffold(
        body: Center(
          child: Text('Notifications'),
        ),
      ),
      routes: {"/notification-screen": (context) => const NotificationScreen()},
    );
  }
}
