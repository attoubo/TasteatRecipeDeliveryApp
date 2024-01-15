import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 70.0, bottom: 10.0, left: 20.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            GestureDetector(
              onTap: () {
                // Naviguer vers une nouvelle page
                Navigator.pushNamed(context, '/profile_screen');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.blue,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () { 
                      Navigator.pushNamed(context, routeName)
                    },
                    child: Text(
                      'data',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  ),
                ],
              ),
            ),


            // Row(
            //   children: [
            //     Icon(Icons.navigate_next),
            //     Text(
            //       'All recipes',
            //       style: TextStyle(color: kUniversalAppRed),
            //     ),
            //     Expanded(
            //       child: Text(
            //         'Profile',
            //         style: TextStyle(
            //           fontSize: 23.0,
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Text(
            //         'Save',
            //         style: TextStyle(
            //             fontSize: 20.0,
            //             color: Colors.black,
            //             fontWeight: FontWeight.w500),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
