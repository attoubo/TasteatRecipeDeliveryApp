import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/constants.dart';
import 'package:tasteat_recipe_delivery_app/screens/favorite_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/test.dart';
import 'package:tasteat_recipe_delivery_app/screens/user_profile/profile_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/welcome_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/login_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/registration_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/auth/reset_password.dart';
import 'package:tasteat_recipe_delivery_app/screens/search_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/add_option_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/test.dart';
import 'package:tasteat_recipe_delivery_app/components/bottom_navbar.dart';

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
        '/': (context) => const ProfileScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/registration_screen': (context) => RegistrationScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
        '/addOption_screen': (context) => addOptionScreen(),
        '/favorite_screen': (context) => FavoriteScreen(),
        '/search_screen': (context) => SearchScreen(),
      },

    );

  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final _widgetOptions = [
    addOptionScreen(),
    FavoriteScreen(),
    SearchScreen(),

  ];

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 38.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: kUniversalAppRed,
        onTap: _onItemTapped,
      )
    );
  }
}
