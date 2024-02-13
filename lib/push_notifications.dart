import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotifications {
  static final _firebaseMessaging = FirebaseMessaging.instance;

  // Método estático para inicializar las notificaciones push
  static Future init() async {
    // Solicitar permisos para recibir notificaciones con diferentes características
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // Obtener el token del dispositivo (para pruebas con Firebase)
    // final token = await _firebaseMessaging.getToken();
    // print('Device token: ' + token!);
  }
}
