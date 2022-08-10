import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: New',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Search',
      style: optionStyle,
    ),
    Text(
      'Index 3: Gallery',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // children: [
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0, left: 0.0, right: 0.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Ingredients / Dish',
                ),
              ),
            ),
            Center(
                child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              direction: Axis.horizontal,
              spacing: 35.0,
              runSpacing: 20.0,
              children: <Widget>[
                for (var i in text)
                  GestureDetector(
                    onTap: () {
                      print("Container clicked");
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'images/cupcake.png',
                          ),
                          height: 50.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        const Text(
                          'Dessert',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
              ],
            )),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Color.fromRGBO(255, 55, 55, 1.0)),
                ),
              ],
            ),
            const SizedBox(),

            Container(
              height: 235.0,
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              // padding: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                  for (var i in text) Row(
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
                              height: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                //add border radius
                                child: Image.asset(
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
                        )
                      ],
                    ),
                  ],
                ),
                ],
              ),
            ),



            // Container(
            //   margin: const EdgeInsets.symmetric(vertical: 20.0),
            //   height: 170.0,
            //   child: ListView(
            //     // This next line does the trick.
            //     scrollDirection: Axis.horizontal,
            //     children: <Widget>[
            //       for (var i in text)
            //         Stack(alignment: Alignment.topRight, children: <Widget>[
            //           Card(
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(20.0),
            //             ),
            //             margin: const EdgeInsets.only(
            //               left: 5.0,
            //               right: 5.0,
            //             ),
            //             color: Colors.white70,
            //             child: SizedBox(
            //               width: 150,
            //               // height: 200,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(20.0),
            //                 //add border radius
            //                 child: Image.asset(
            //                   'images/cake2-0.jpg',
            //                   // fit:BoxFit.cover, //change image fill type
            //                 ),
            //                 // Text(
            //                 //   i.toString(),
            //                 //   textAlign: TextAlign.center
            //                 //   ,)
            //               ),
            //             ),
            //           ),
            //           const Padding(
            //             // alignment: Alignment.topRight,
            //             padding: EdgeInsets.all(15.0),
            //             child: Icon(
            //               Icons.favorite_border,
            //               color: Colors.black38,
            //             ),
            //           ),
            //         ]
            //         ),
            //       const SizedBox(
            //         height: 40.0,
            //       ),
            //       const Text('data'),
            //     ],
            //   ),
            // ),



            const SizedBox(
              height: 0.0,
            ),

            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'All recipes',
                    style: TextStyle(color: Color.fromRGBO(255, 55, 55, 1.0)),
                  ),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
            // const SizedBox(),
          ],
        ),
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: const Color.fromRGBO(255, 55, 55, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }
}

sampleFunction() {
  print('Function Called');
}
