import 'package:flutter/material.dart';


class MainTest extends StatefulWidget {
  const MainTest({Key? key}) : super(key: key);

  @override
  State<MainTest> createState() => _MainTestState();
}

class _MainTestState extends State<MainTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Main Test'
        ),
      ),
      body: const Center(child: Text("HEllo main test", style: TextStyle(fontSize: 60.0),),),
      // bottomNavigationBar: ,
    );
  }
}
