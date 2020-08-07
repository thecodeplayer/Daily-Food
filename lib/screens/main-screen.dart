import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/screens/my-cart.dart';
import 'package:dailyfood/widgets/account-icon.dart';
import 'package:dailyfood/widgets/location-filter.dart';
import 'package:dailyfood/widgets/menu-items.dart';
import 'package:dailyfood/widgets/near-you.dart';
import 'package:dailyfood/widgets/popular-restaurants.dart';
import 'package:dailyfood/widgets/search-field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: dfWhite,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
            children: <Widget>[
              AccountIcon(),
              SearchField(),
              LocationFilter(),
              SizedBox(height: 15.0),
              MenuItems(),
              const Divider(
                color: Colors.black12,
                height: 25.0,
                thickness: 1,
              ),
              PopularRestaurants(),
              const Divider(
                color: Colors.black12,
                height: 25.0,
                thickness: 1,
              ),
              NearYou()
            ],
          ),
        ),
      ),
    );
  }
}





