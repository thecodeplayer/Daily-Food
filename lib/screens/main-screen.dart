import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/widgets/account-icon.dart';
import 'package:dailyfood/widgets/banner-view.dart';
import 'package:dailyfood/widgets/custom-divider.dart';
import 'package:dailyfood/widgets/daily-food-bottom.dart';
import 'package:dailyfood/widgets/location-filter.dart';
import 'package:dailyfood/widgets/menu-items.dart';
import 'package:dailyfood/widgets/near-you.dart';
import 'package:dailyfood/widgets/popular-restaurants.dart';
import 'package:dailyfood/widgets/search-field.dart';
import 'package:dailyfood/widgets/top-offers.dart';
import 'package:dailyfood/widgets/trending-brands.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my-bag-screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 100.0,
          width: 65.0,
          child: FloatingActionButton(
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.shopping_basket, size: 40.0, color: dfWhite),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) => MyBagScreen()));
            },
          ),
        ),
        backgroundColor: dfWhite,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                child: Column(
                  children: <Widget>[
                    AccountIcon(),
                    SearchField(),
                    LocationFilter(),
                    BannerView(),
                    CustomDivider(),
                    MenuItems(),
                    CustomDivider(),
                    PopularRestaurants(),
                    CustomDivider(),
                    TrendingBrands(),
                    CustomDivider(),
                    TopOffers(),
                    CustomDivider(),
                    NearYou(),
                    CustomDivider(),
                    DailyFoodBottom(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 400.0,
                  height: 50.0,
                  color: Colors.grey,
                  child: Center(
                    child: RichText(
                        text: TextSpan(
                          text: 'App Version v.1.1.0',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                          ),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





