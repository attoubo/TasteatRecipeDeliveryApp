import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: const Color.fromRGBO(255, 55, 55, 1.0),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 0.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 180.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Your Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Your Password',
                ),
              ),
            ),
            FlatButton(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 55, 55, 1.0),
                      fontSize: 16.0
                  ),
                ),
              onPressed: () => {
              //Go to reset password screen.
              Navigator.pushNamed(context, '/reset_password'),
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Material(
                elevation: 5.0,
                color: const Color.fromRGBO(255, 55, 55, 1.0),
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  onPressed: () {
                    //Go to login screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
