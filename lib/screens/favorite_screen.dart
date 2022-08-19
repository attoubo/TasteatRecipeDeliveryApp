// TODO: favorite screen display list of all users favorites recipes or dishes
// TODO: search input and filter icon button on top

import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/components/dish_search_bar.dart';
import 'package:tasteat_recipe_delivery_app/components/bottom_navbar.dart';
import '../components/reusable_list_card.dart';
import 'package:tasteat_recipe_delivery_app/constants.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50.0, bottom: 10.0, left: 20.0, right: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                        child: DishSearchBarWidget()
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Icon(
                        Icons.filter_alt_outlined,
                        size: 30.0,
                        color: kUniversalAppRed,
                      ),
                    ),
                  ],
                ),

                GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(top: 20.0),
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 0.76,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    for (var i in text) const ReusableListCard(),
                  ],
                ),

              ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
