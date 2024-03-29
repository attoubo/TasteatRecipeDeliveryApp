import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/constants.dart';
import 'package:tasteat_recipe_delivery_app/screens/add_option_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/favorite_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/galery_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/search_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/user_profile/profile_screen.dart';

class BottomNavBar extends StatefulWidget {

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

    int _selectedIndex = 0;
  // late List<Widget> _widgetOptions ;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }

    static final List<Widget> _widgetOptions = <Widget>[
      addOptionScreen(),
      FavoriteScreen(),
      SearchScreen(),
      GalleryScreen(),
      ProfileScreen(),
    ];


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
        BottomNavigationBarItem(
          icon: Icon(Icons.photo),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
          // backgroundColor: kUniversalAppRed,
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

//:TODO selected item color don't work after setting bottom icon route ( must fix it !) done