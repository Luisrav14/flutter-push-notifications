import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late String message;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Obtener los datos de la ruta de navegación
    final data = ModalRoute.of(context)!.settings.arguments;
    // Asignar el mensaje recibido
    if (data != null) {
      setState(() {
        message = data.toString();
      });
      print(message);
    } else {
      setState(() {
        message = "No message received";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification message'),
      ),
      body: Center(
        child: Text(message.toString()),
      ),
    );
  }
}
