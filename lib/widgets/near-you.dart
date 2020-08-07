import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';

class NearYou extends StatefulWidget {
  @override
  _NearYouState createState() => _NearYouState();
}

class _NearYouState extends State<NearYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.near_me, color: Colors.blueGrey,),
                SizedBox(
                  width: 10.0,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Near You',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
          nearFoods(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.restaurant, color: Colors.blueGrey,),
                SizedBox(
                  width: 10.0,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Nearby Restaurants',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
          nearRestaurants(Image.asset('assets/images/gourmet-kitchen.jpg', height: 100.0,), 'The Gourmet Kitchen', ' 2km ·', ' 10mins'),
          nearRestaurants(Image.asset('assets/images/asian-restaurant.jpeg', height: 100.0,), 'Asian Restaurant', ' 4km ·', ' 15mins'),
          nearRestaurants(Image.asset('assets/images/basic-pizza.png', height: 100.0,), 'Basic Pizza', ' 5km ·', ' 18mins'),
          nearRestaurants(Image.asset('assets/images/seafood-house.jpg', height: 100.0,), 'Seafood House', ' 6km ·', ' 20mins'),
          nearRestaurants(Image.asset('assets/images/chill-out.jpg', height: 100.0,), 'Chill Out', ' 7km ·', ' 23mins')
        ],
      ),
    );
  }
}

Widget nearRestaurants(Image image, String title, String kilometer, String time) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Card(
      color: dfGray,
      elevation: 0,
      child: ListTile(
        leading: image,
        title:  RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ))),
        subtitle:  Container(
          child: Row(
            children: <Widget>[
              Icon(Icons.directions_car, color: Colors.blueGrey, size: 15.0,),
              RichText(
                  text: TextSpan(
                      text: kilometer,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blueGrey,
                      ))),
              Icon(Icons.access_alarm, color: Colors.blueGrey, size: 15.0,),
              RichText(
                  text: TextSpan(
                      text: time,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blueGrey,
                      ))),
            ],
          )
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    ),
  );
}

Widget nearFoods() {
  return Container(
    height: 260.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            foodTemplate(
                Image.asset(
                  'assets/images/ribsilog.png',
                  height: 80.0,
                ),
                'Rib Silog',
                'Silog King',
                'Php 320.00', 'rib'),
            foodTemplate(
                Image.asset(
                  'assets/images/barbeque.png',
                  height: 80.0,
                ),
                'Barbeque',
                'Daily Grill',
                'Php 235.00', 'barbeque'),
            foodTemplate(
                Image.asset(
                  'assets/images/sinigang.png',
                  height: 80.0,
                ),
                'Sinigang',
                'Sea Spice',
                'Php 285.00', 'sinigang'),
            foodTemplate(
                Image.asset(
                  'assets/images/milktea.png',
                  height: 80.0,
                ),
                'Milk Tea',
                'Tea Plus',
                'Php 250.00', 'milktea'),
            foodTemplate(
                Image.asset(
                  'assets/images/baconsilog.png',
                  height: 80.0,
                ),
                'Bacon Silog',
                'Silogan Express',
                'Php 280.00', 'bacon'),
          ],
        )
      ],
    ),
  );
}

Widget foodTemplate(Image image, String title, String subtitle, String price, String tag) {
  return Container(
      margin: const EdgeInsets.all(10.0),
      height: 260.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: dfGhostWhite,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
              tag: tag,
              child: image),
          SizedBox(
            height: 25.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      text: title,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ))),
              RichText(
                  text: TextSpan(
                      text: subtitle,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueGrey,
                      ))),
              RichText(
                  text: TextSpan(
                      text: price,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ))),
            ],
          )
        ],
      ));
}
