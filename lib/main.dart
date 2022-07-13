import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/screens/welcome_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/login_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/registration_screen': (context) => RegistrationScreen(),
      },
    );
  }
}
