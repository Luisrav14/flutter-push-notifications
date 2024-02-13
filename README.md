# Firebase Cloud Messaging (Notificaciones)

## Dependencias

- `firebase_core`
- `firebase_messaging`
- `flutter_local_notifications`

## Configuración del Proyecto en Firebase

1. Inicia sesión en Firebase usando la CLI:

   ```bash
   firebase login
   ```

2. Activa FlutterFire CLI globalmente:

   ```bash
   dart pub global activate flutterfire_cli
   ```

3. En la raíz del proyecto, configura Firebase:

   ```bash
   flutterfire configure --project=[nombre-del-proyecto]
   ```

   Asegúrate de seleccionar las plataformas en las que se utilizarán las notificaciones. Posteriormente, se generará el archivo de configuración `/lib/firebase_options.dart`.
