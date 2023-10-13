import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0, left: 20.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Expanded(
                    child: Text(
                        'Profile',
                        style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Icon(
                    Icons.settings,
                    size: 30.0,
                    color: kUniversalAppRed,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}