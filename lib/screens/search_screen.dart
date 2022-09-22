import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/components/dish_search_bar.dart';
import 'package:tasteat_recipe_delivery_app/components/bottom_navbar.dart';
import 'package:tasteat_recipe_delivery_app/screens/favorite_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/add_option_screen.dart';
import 'package:tasteat_recipe_delivery_app/screens/search_screen.dart';
import '../constants.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0, left: 24.0, right: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 24.0, bottom: 24.0, left: 0.0, right: 0.0),
              child: DishSearchBarWidget(),
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
                  style: TextStyle(color: kUniversalAppRed),
                ),
              ],
            ),
            const SizedBox(),

            Container(
              height: 230.0,
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
                              height: 170,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                //add border radius
                                child: Image.asset(
                                  'images/cake2-0.jpg',
                                ),
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
                          style: kCardFoodNameStyle,
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


            const SizedBox(
              height: 0.0,
            ),

            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'All recipes',
                    style: TextStyle(color: kUniversalAppRed),
                  ),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),


            GridView.count(
              primary: false,
              // padding: const EdgeInsets.all(20),
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 10,
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 0.75,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                for (var i in text) Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(alignment: Alignment.topRight, children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            margin: const EdgeInsets.all(6.0),
                            color: Colors.white70,
                            child: SizedBox(
                              width: 160,
                              height: 170,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                //add border radius
                                child:
                                Image.asset(
                                  'images/cake2-0.jpg',
                                ),
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
                          style: kCardFoodNameStyle,
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
              ],
            ),


            const SizedBox(),
          ],
        ),
        // ],
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}


sampleFunction() {
  print('Function Called');
}
