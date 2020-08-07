import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/screens/my-cart.dart';
import 'package:flutter/material.dart';

class AccountIcon extends StatefulWidget {
  @override
  _AccountIconState createState() => _AccountIconState();
}

class _AccountIconState extends State<AccountIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/images/daily-food-logo.png', height: 80.0,),
          InkWell(
            onTap:  (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => MyCart()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: dfGray,
              ),
              height: 40.0,
              width: 40.0,
              child: Image.asset('assets/images/hacker.png'),
            ),
          )
        ],
      ),
    );
  }
}
