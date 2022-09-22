import 'package:flutter/material.dart';

import '../../constants.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late int _counter = 0;

  void _incrementCounter () {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0, left: 24.0, right: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.settings_outlined,
                  color: kUniversalAppRed,
                  size: 40.0,
                )
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Center(
                      child: SizedBox(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/cake2-0.jpg'),
                        ),
                        height: 130.0,
                        width: 130.0,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(' '),
                        Icon(
                          Icons.settings_outlined,
                          color: kUniversalAppRed,
                          size: 30.0,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: kUniversalAppRed,
        child: const Icon(Icons.add,),
      ),
    );
  }
}
