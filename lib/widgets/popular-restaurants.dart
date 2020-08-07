import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/screens/popular-restaurants-screen.dart';
import 'package:dailyfood/screens/restaurant-detail-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PopularRestaurants extends StatefulWidget {
  @override
  _PopularRestaurantsState createState() => _PopularRestaurantsState();
}

class _PopularRestaurantsState extends State<PopularRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.restaurant_menu, color: Colors.blueGrey,),
                  SizedBox(
                    width: 10.0,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Popular Restaurants',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => PopularRestaurantsScreen()));
                },
                child: RichText(
                    text: TextSpan(
                        text: 'View All',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey,
                        ))),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10.0),
            color: dfGhostWhite
          ),
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => RestaurantDetailScreen()));
                      },
                      child: popularRestaurants(
                          Image.asset(
                            'assets/images/kusina-express.jpg',
                            height: 180.0,
                          ),
                          'Kusina Express',
                          'Dagupan City, Pangasinan',
                          '4.8', 'Free Shipping', 'kusina'),
                    ),
                    popularRestaurants(
                        Image.asset(
                          'assets/images/sizzling-plate.png',
                          height: 180.0,
                        ),
                        'Sizzling Plate',
                        'Dagupan City, Pangasinan',
                        '4.5', 'Free Shipping', 'sizzling'),
                    popularRestaurants(
                        Image.asset(
                          'assets/images/mesa.jpg',
                          height: 180.0,
                        ),
                        'Mesa',
                        'Dagupan City, Pangasinan',
                        '4.6', 'Free Shipping', 'mesa'),
                    popularRestaurants(
                        Image.asset(
                          'assets/images/sangkap.png',
                          height: 180.0,
                        ),
                        'Sangkap',
                        'Dagupan City, Pangasinan',
                        '4.3', 'Free Shipping', 'sangkap'),
                    popularRestaurants(
                        Image.asset(
                          'assets/images/great-taste.jpg',
                          height: 180.0,
                        ),
                        'Great Taste',
                        'Dagupan City, Pangasinan',
                        '4.0', 'Free Shipping', 'great'),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}

Widget popularRestaurants(Image image, String restaurant, String location, String rating, String shipping, String tag) {
  return Container(
      margin: const EdgeInsets.all(10.0),
      height: 300.0,
      width: 250.0,
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Hero(
                tag: tag,
                  child: image)),
          SizedBox(
            height: 5.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: restaurant,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ))),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.check_circle, color: Colors.green,)
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              RichText(
                  text: TextSpan(
                      text: location,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueGrey,
                      ))),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    height: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.white, size: 15.0,),
                        SizedBox(
                          width: 5.0,
                        ),
                        RichText(
                            text: TextSpan(
                                text: rating,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: shipping,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blueGrey,
                          ))),
                ],
              )
            ],
          )
        ],
      ));
}
