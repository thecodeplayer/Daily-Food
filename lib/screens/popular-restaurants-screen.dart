import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/widgets/custom-divider.dart';
import 'package:dailyfood/widgets/search-field.dart';
import 'package:dailyfood/widgets/trending-brands.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my-bag-screen.dart';

class PopularRestaurantsScreen extends StatefulWidget {
  @override
  _PopularRestaurantsScreenState createState() =>
      _PopularRestaurantsScreenState();
}

class _PopularRestaurantsScreenState extends State<PopularRestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: dfWhite,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            children: <Widget>[
              Container(
                height: 70.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_basket, size: 40.0, color: Colors.redAccent,),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => MyBagScreen()));
                      },
                    )
                  ],
                ),
              ),
              SearchField(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                child: TrendingBrands(),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.restaurant_menu,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Popular Restaurants',
                            style: GoogleFonts.notoSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: RichText(
                    text: TextSpan(
                        text: 'We Listen to the Food',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey,
                        ))),
              ),
              popularRestaurant(
                  Image.asset(
                    'assets/images/kusina-express.jpg',
                    height: 100.0,
                  ),
                  'Kusina Express\n',
                  '4.8',
                  'Dagupan City, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/sizzling-plate.png',
                    height: 100.0,
                  ),
                  'Sizzling Plate\n',
                  '4.5',
                  'Dagupan City, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/mesa.jpg',
                    height: 100.0,
                  ),
                  'Mesa\n',
                  '4.6',
                  'San Fabian, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/sangkap.png',
                    height: 100.0,
                  ),
                  'Sangkap\n',
                  '4.3',
                  'Dagupan City, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/great-taste.jpg',
                    height: 100.0,
                  ),
                  'Great Taste\n',
                  '4.0',
                  'Mangaldan, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/delightful-dining.jpg',
                    height: 100.0,
                  ),
                  'Delightful Dining\n',
                  '4.9',
                  'San Jacinto, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/beer-burgers.jpg',
                    height: 100.0,
                  ),
                  'Beer Burgers\n',
                  '4.3',
                  'Mangaldan, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/coffee-and-cake.jpg',
                    height: 100.0,
                  ),
                  'Coffee and Cake\n',
                  '4.6',
                  'San Jacinto, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/food-place.jpg',
                    height: 100.0,
                  ),
                  'The Food Place\n',
                  '4.3',
                  'San Fabian, Pangasinan'),
              popularRestaurant(
                  Image.asset(
                    'assets/images/unique-meals.jpg',
                    height: 100.0,
                  ),
                  'Unique Meals\n',
                  '4.0',
                  'San Fabian, Pangasinan')
            ],
          ),
        ),
      ),
    );
  }
}

Widget popularRestaurant(Image image, String restaurant, String rating, String location) {
  return Card(
    elevation: 0,
    child: ListTile(
      leading: image,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: RichText(
            text: TextSpan(
                text: restaurant,
                style: GoogleFonts.montserrat(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
                children: <TextSpan>[
              TextSpan(
                  text: location,
                  style: GoogleFonts.roboto(fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.black))
            ])),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(3.0),
            height: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: Colors.red),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        text: rating,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
    ),
  );
}
