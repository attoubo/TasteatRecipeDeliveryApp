import 'package:flutter/material.dart';


class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}


class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: const Color.fromRGBO(255, 55, 55, 1.0),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 100.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 80.0,
            ),
            // const Center(
            //   child:
              const Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(255, 55, 55, 1.0),
                ),
              ),
            const SizedBox(
              height: 4.0,
            ),
            const Text(
              'Enter your user account verified email address and we will send you a password reset link.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Your Email',
                ),
              ),
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
                    'Reset Password',
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