import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/screens/favorite_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/test.dart';
import 'package:tasteat_recipe_delivery_app/screens/welcome_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/login_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/registration_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/reset_password.dart';
import 'package:tasteat_recipe_delivery_app/screens/search_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/add_option_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/test.dart';

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
        '/': (context) => const addOptionScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/registration_screen': (context) => RegistrationScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
      },
    );
  }
}
