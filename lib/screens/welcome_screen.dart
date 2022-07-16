import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/scheduler.dart' show timeDilation;


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin{

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 1), vsync: this, upperBound: 160.0);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                  AnimatedTextKit(
                    animatedTexts: [
                    TypewriterAnimatedText(
                      'Tasteat',
                      textStyle: const TextStyle(
                        fontSize: 60.0,
                        fontFamily: 'Agne',
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                        letterSpacing: 3,
                        fontWeight: FontWeight.w900,

                      ),
                      speed: const Duration(milliseconds: 250),
                    ),
                  ],
                  ),
                ]
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: const Color.fromRGBO(255, 55, 55, 1.0),
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  onPressed: () {
                    //Go to login screen.
                    Navigator.pushNamed(context, '/login_screen');
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: const Color.fromRGBO(255, 55, 55, 1.0),
                borderRadius: BorderRadius.circular(15.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Go to registration screen.
                    Navigator.pushNamed(context, '/registration_screen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),

            // const SizedBox(
            //   height: 60.0,
            // ),
            // const Center(
            //   child: Text(
            //     'Cooking is easy and Eating is too exciting',
            //     style: TextStyle(
            //       color: Color.fromRGBO(255, 55, 55, 1.0),
            //       fontSize: 16.0,
            //       fontWeight: FontWeight.w500,
            //     ),
            //
            //   ),
            // ),
             const Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text('You can try'),
              ),
            // ),
          ],
        ),

      ),
    );
  }
}
