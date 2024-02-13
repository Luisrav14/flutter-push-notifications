import 'package:flutter/material.dart';
import 'package:push_notifications/notification.dart';

final navigationKey = GlobalKey<NavigatorState>();

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification message'),
      ),
      body: const Center(
        child: Text('Message'),
      ),
    );
  }
}
