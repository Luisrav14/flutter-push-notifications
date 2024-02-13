import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Instancia del complemento de notificaciones locales de Flutter
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Función para manejar mensajes de notificación en segundo plano
Future<void> _firebaseBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
    _showNotification(message.notification!.title.toString(),
        message.notification!.body.toString());
  }
}

// Función para mostrar una notificación local
void _showNotification(String title, String body) async {
  // Configurar detalles de notificación para Android
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'channel_id', // ID único para el canal de notificación
    'channel_name', // Nombre del canal de notificación
    importance: Importance.max,
    priority: Priority.high,
    showWhen: true,
  );

  // Configurar detalles generales de la notificación
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  // Mostrar la notificación utilizando el complemento de notificaciones locales

  await flutterLocalNotificationsPlugin.show(
    0, // ID de la notificación
    title,
    body,
    platformChannelSpecifics,
    payload: 'item x',
  );
}

// Clase para manejar la inicialización y gestión de notificaciones
class NotificationHandler {
  // Método estático para inicializar la gestión de notificaciones
  static void init() {
    // Configurar ajustes de inicialización para Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    // Configurar ajustes de inicialización generales
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    // Inicializar el complemento de notificaciones locales
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
    // Escuchar mensajes de notificación en segundo plano
    FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);
  }
}
