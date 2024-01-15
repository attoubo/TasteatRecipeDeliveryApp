import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

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
                Navigator.pushNamed(context, '/profile_settings');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),

                  Icon(
                    Icons.settings,
                    size: 30.0,
                    color: kUniversalAppRed,
                  ),
                ],
              ),
            ),
          //   const Row(
          //     children: [
          //       Expanded(
          //           child: Text(
          //               'Profile',
          //               style: TextStyle(
          //               fontSize: 23.0,
          //               fontWeight: FontWeight.w700,
          //             ),
          //           ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.all(8.0),
          //         child: IconButton(
          //           icon: Icon(
          //             Icons.settings,
          //             size: 30.0,
          //             color: kUniversalAppRed,
          //           ), onPressed: (null),
          //         ),
          //       ),
          //     ],
          // ),
            const SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 130.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    //set border radius to 50% of square height and width
                    image: const DecorationImage(
                      image: AssetImage("images/Profile.png"),
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Richard simpson',
                  style: TextStyle(
                      fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 30.0,
                    color: kUniversalAppRed,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chef-status',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500
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