import 'dart:async';
import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushNamedAndRemoveUntil(context, '/main', (_) => false),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dfGray,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/images/daily-food-logo.png', height: 250.0,),
            ],
          )
      ),
    );
  }
}