import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/screens/my-profile-screen.dart';
import 'package:flutter/material.dart';

class AccountIcon extends StatefulWidget {
  @override
  _AccountIconState createState() => _AccountIconState();
}

class _AccountIconState extends State<AccountIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/daily-food-logo.png', height: 80.0,),
            InkWell(
              onTap:  (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => MyProfileScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: dfGray,
                ),
                height: 40.0,
                width: 40.0,
                child: Icon(Icons.account_circle, size: 45.0, color: Colors.blueGrey,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
