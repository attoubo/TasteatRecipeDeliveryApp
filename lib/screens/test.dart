import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  List<int> text = [1,2,3,4,5,6,7,8,9,10,11,12];


  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 10,
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            for (var i in text) SingleChildScrollView(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(alignment: Alignment.topRight, children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          margin: const EdgeInsets.all(6.0),
                          color: Colors.white70,
                          child: SizedBox(
                            width: 150,
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              //add border radius
                              child:
                              Image.asset(
                                'images/cake2-0.jpg',
                                // fit:BoxFit.cover, //change image fill type
                              ),
                              // Text(
                              //   i.toString(),
                              //   textAlign: TextAlign.center
                              //   ,)
                            ),
                          ),
                        ),
                        const Padding(
                          // alignment: Alignment.topRight,
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black38,
                          ),
                        ),
                      ]
                      ),
                      const Text(
                        'Kander Switzerland',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0
                        ),
                      ),
                      Row(
                        children: [
                          const Text('41 min '),
                          Icon(
                            Icons.star,
                            color: Colors.red[500],
                          ),
                          const Text(' 3.5'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// for ( var i in text ) Card(
// color: Colors.black12,
// child:
// ),
