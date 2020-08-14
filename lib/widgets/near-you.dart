import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearYou extends StatefulWidget {
  @override
  _NearYouState createState() => _NearYouState();
}

class _NearYouState extends State<NearYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.near_me, color: Colors.blueGrey,),
                    SizedBox(
                      width: 10.0,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Near You',
                            style: GoogleFonts.notoSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            text: 'See All',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey,
                            ))),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.redAccent
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_forward_ios, size: 15.0, color: dfWhite,),
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: RichText(
                text: TextSpan(
                    text: 'Get the Best Deals Near You',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey,
                    ))),
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
                        style: GoogleFonts.notoSans(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
          nearbyRestaurants(Image.asset('assets/images/gourmet-kitchen.jpg', height: 100.0,), 'The Gourmet Kitchen', ' 2Km', ' 10mins'),
          nearbyRestaurants(Image.asset('assets/images/asian-restaurant.jpeg', height: 100.0,), 'Asian Restaurant', ' 4Km', ' 15mins'),
          nearbyRestaurants(Image.asset('assets/images/basic-pizza.png', height: 100.0,), 'Basic Pizza', ' 5Km', ' 18mins'),
          nearbyRestaurants(Image.asset('assets/images/seafood-house.jpg', height: 100.0,), 'Seafood House', ' 6Km', ' 20mins'),
          nearbyRestaurants(Image.asset('assets/images/chill-out.jpg', height: 100.0,), 'Chill Out', ' 7Km', ' 23mins'),
          nearbyRestaurants(Image.asset('assets/images/kitchen-office.jpg', height: 100.0,), 'Kitchen Office', ' 2Km', ' 10mins'),
          nearbyRestaurants(Image.asset('assets/images/flame-on.jpg', height: 100.0,), 'Flame On', ' 4Km', ' 15mins'),
          nearbyRestaurants(Image.asset('assets/images/breakfast-champs.jpg', height: 100.0,), 'Breakfast Champs', ' 5Km', ' 18mins'),
          nearbyRestaurants(Image.asset('assets/images/roadside-pickups.jpg', height: 100.0,), 'Roadside Pickups', ' 6Km', ' 20mins'),
          nearbyRestaurants(Image.asset('assets/images/mad-chicken.jpg', height: 100.0,), 'Mad Chicken', ' 7Km', ' 23mins'),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 01.0, bottom: 20.0),
            child: Container(
              width: 350.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: RichText(
                    text: TextSpan(
                      text: 'See All Restaurants',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget nearbyRestaurants(Image image, String restaurant, String kilometer, String time) {
  return Card(
    elevation: 0,
    child: ListTile(
      leading: image,
      title:  RichText(
          text: TextSpan(
              text: restaurant,
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ))),
      subtitle:  Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.directions_car, color: Colors.blueGrey, size: 15.0,),
                RichText(
                    text: TextSpan(
                        text: kilometer,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ))),
              ],
            ),
           Row(
             children: <Widget>[
               Icon(Icons.access_alarm, color: Colors.blueGrey, size: 15.0,),
               RichText(
                   text: TextSpan(
                       text: time,
                       style: TextStyle(
                         fontSize: 15.0,
                         color: Colors.black,
                       ))),
             ],
           )
          ],
        )
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
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
                      style: GoogleFonts.montserrat(
                        fontSize: 17.0,
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
