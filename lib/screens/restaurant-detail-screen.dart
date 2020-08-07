import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';


class RestaurantDetailScreen extends StatefulWidget {
  @override
  _RestaurantDetailScreenState createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: <Widget>[
      Positioned(
          child: Hero(
              tag: 'kusina',
              child: Image.asset(
                'assets/images/kusina-express.jpg',
                width: MediaQuery.of(context).size.width,
              ))),
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 200.0),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: dfWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Row(
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: 'Kusina Express',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.blueGrey,
                                  ))),
                          SizedBox(width: 15.0),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          SizedBox(width: 120.0),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                      child: RichText(
                          text: TextSpan(
                              text: 'Dagupan City, Pangasinan',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueGrey,
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            height: 20.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.red),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '4.8',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ))),
                              ],
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Free Shipping',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blueGrey,
                                  ))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.local_offer,
                            color: Colors.redAccent,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ' Use code DailyFoodKE & get 20% discount up to \nPhp 350.00 on orders above Php 1000.00',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueGrey,
                                  ))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: 'Main Course',
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: Container(
                        height: 260.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            foodTemplate(
                                Image.asset(
                                  'assets/images/ginataang-isda.png',
                                  height: 80.0,
                                ),
                                'Ginataang Isda',
                                'Kusina Express',
                                'Php 220.00',
                                Icons.bookmark),
                            foodTemplate(
                                Image.asset(
                                  'assets/images/bistek-tagalog.png',
                                  height: 80.0,
                                ),
                                'Bistek Tagalog',
                                'Kusina Express',
                                'Php 350.00',
                                Icons.bookmark),
                            foodTemplate(
                                Image.asset(
                                  'assets/images/chicken-adobo.png',
                                  height: 95.0,
                                ),
                                'Chicken Adobo',
                                'Kusina Express',
                                'Php 250.00',
                                Icons.check_circle),
                            foodTemplate(
                                Image.asset(
                                  'assets/images/kare-kare.png',
                                  height: 95.0,
                                ),
                                'Kare-Kare',
                                "Kusina Express",
                                'Php 300.00',
                                Icons.bookmark),
                            foodTemplate(
                                Image.asset(
                                  'assets/images/beef-caldereta.png',
                                  height: 95.0,
                                ),
                                'Caldereta',
                                'Kusina Express',
                                'Php 350.00',
                                Icons.bookmark)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: 'Recommended Dishes',
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 10.0, right: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            recommendedDishes(
                                Image.asset(
                                  'assets/images/pinakbet.png',
                                  height: 100.0,
                                ),
                                'Pinakbet',
                                'Php 200.00'),
                            recommendedDishes(
                                Image.asset(
                                  'assets/images/tinapa-palabok.png',
                                  height: 100.0,
                                ),
                                'Tinapa Palabok',
                                'Php 230.00'),
                            recommendedDishes(
                                Image.asset(
                                  'assets/images/pancit-guisado.png',
                                  height: 100.0,
                                ),
                                'Pancit Guisado',
                                'Php 350.00'),
                            recommendedDishes(
                                Image.asset(
                                  'assets/images/sizzling-sisig.png',
                                  height: 100.0,
                                ),
                                'Sisig',
                                'Php 250.00'),
                            recommendedDishes(
                                Image.asset(
                                  'assets/images/lechon-baboy.png',
                                  height: 100.0,
                                ),
                                'Lechon',
                                'Php 450.00')
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    ])));
  }
}

Widget foodTemplate(Image image, String title, String subtitle, String price,
    IconData iconData) {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  iconData,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.blueGrey,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          image,
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

Widget recommendedDishes(Image image, String title, String price) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Card(
      color: dfGray,
      elevation: 0,
      child: ListTile(
        leading: image,
        title: RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ))),
        subtitle: RichText(
            text: TextSpan(
                text: price,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                ))),
        trailing: Icon(Icons.favorite_border),
      ),
    ),
  );
}
