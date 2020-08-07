import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/widgets/search-field.dart';
import 'package:dailyfood/widgets/trending-brands.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularRestaurantsScreen extends StatefulWidget {
  @override
  _PopularRestaurantsScreenState createState() => _PopularRestaurantsScreenState();
}

class _PopularRestaurantsScreenState extends State<PopularRestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
            Navigator.pop(context);
          }),
        ),
        backgroundColor: dfWhite,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            children: <Widget>[
              SearchField(),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                child: TrendingBrands(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
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
              ),
              popularRestaurant(Image.asset('assets/images/kusina-express.jpg', height: 100.0,), 'Kusina Express\n', '4.8', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/sizzling-plate.png', height: 100.0,), 'Sizzling Plate\n', '4.5', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/mesa.jpg', height: 100.0,), 'Mesa\n', '4.6', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/sangkap.png', height: 100.0,), 'Sangkap\n', '4.3', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/great-taste.jpg', height: 100.0,), 'Great Taste\n', '4.0', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/delightful-dining.jpg', height: 100.0,), 'Delightful Dining\n', '4.9', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/beer-burgers.jpg', height: 100.0,), 'Beer Burgers\n', '4.3', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/coffee-and-cake.jpg', height: 100.0,), 'Coffee and Cake\n', '4.6', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/food-place.jpg', height: 100.0,), 'The Food Place\n', '4.3', 'Dagupan City, Pangasinan'),
              popularRestaurant(Image.asset('assets/images/unique-meals.jpg', height: 100.0,), 'Unique Meals\n', '4.0', 'Dagupan City, Pangasinan')
            ],
          ),
        ),
      ),
    );
  }
}

Widget popularRestaurant(Image image, String title, String rating, String location) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Card(
      color: dfGray,
      elevation: 0,
      child: ListTile(
        leading: image,
        title:  Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ), children: <TextSpan>[
              TextSpan(text: location, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500))])),
        ),
        subtitle:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3.0),
              height: 20.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.red
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
          ],
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    ),
  );
}