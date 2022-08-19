import 'package:flutter/material.dart';


class ReusableListCard extends StatelessWidget {
  const ReusableListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.topRight, children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
              'Kand Switzerland',
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
    );
  }
}
