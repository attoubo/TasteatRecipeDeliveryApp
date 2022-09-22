// TODO: create one page for adding new recipe or video
// TODO: this page must contain two button options ( add video and add new recipe )
// TODO: add video must be modal for video to uploaded or a video link
// TODO: add new recipe must be a modal form with actions buttons ( validate and close )
import 'package:flutter/material.dart';
import 'package:tasteat_recipe_delivery_app/components/bottom_navbar.dart';
import 'package:tasteat_recipe_delivery_app/constants.dart';


class addOptionScreen extends StatefulWidget {
  // const addOptionScreen({Key? key}) : super(key: key);

  @override
  State<addOptionScreen> createState() => _addOptionScreenState();
}

class _addOptionScreenState extends State<addOptionScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 55.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Expanded(
                    child: Text(
                      'New Recipe',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 90.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add new recipe',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FlatButton(
                        onPressed: null,
                        child: Icon(
                          Icons.add_box,
                          size: 130.0,
                          color: kUniversalAppRed,
                        ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: const [
                Text('Or',style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.cloud_upload,
                        size: 130.0,
                        color: kUniversalAppRed,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Share video',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// final screens = const [
//   Center(child: Text('AddNew', style: TextStyle(fontSize: 60.0),),),
//   Center(child: Text('Favorite', style: TextStyle(fontSize: 60.0),),),
//   Center(child: Text('MainSearch', style: TextStyle(fontSize: 60.0),),),
//   Center(child: Text('Gallery', style: TextStyle(fontSize: 60.0),),),
//   Center(child: Text('Profile', style: TextStyle(fontSize: 60.0),),),
// ];