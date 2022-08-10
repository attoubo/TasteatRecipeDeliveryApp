import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  List<int> text = [1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for ( var i in text ) Card(
                color: Colors.black12,
                child: SizedBox(
                  width: 150,
                  // height: 200,
                  child: Center(child: Text(i.toString(), textAlign: TextAlign.center,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
