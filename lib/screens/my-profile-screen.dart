import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/widgets/daily-food-bottom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(
                                text: "My Account",
                                style: GoogleFonts.notoSans(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ))),
                        Icon(Icons.account_circle, size: 35.0, color: Colors.blueGrey,)
                      ],
                    ),
                  ),
                  accountItem(Icon(Icons.account_box, size: 35.0), 'Account Details'),
                  accountItem(Icon(Icons.access_time, size: 35.0), 'Order History'),
                  accountItem(Icon(Icons.local_offer, size: 35.0), 'Promo Codes'),
                  accountItem(Icon(Icons.account_balance_wallet, size: 35.0), 'Daily Food Money'),
                  accountItem(Icon(Icons.settings_applications, size: 35.0), 'Settings'),
                  accountItem(Icon(Icons.help, size: 35.0), 'FAQS'),
                  accountItem(Icon(Icons.people, size: 35.0), 'Support'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Container(
                      width: 350.0,
                      height: 45.0,
                      color: Colors.redAccent,
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                              text: 'LOGOUT',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),)),
                      ),
                    ),
                  ),
                  DailyFoodBottom(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget accountItem(Icon icon, String title) {
  return Card(
    color: dfGhostWhite,
    elevation: 0,
    child: ListTile(
      leading: icon,
      title:  RichText(
          text: TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ))),
      trailing: Icon(Icons.arrow_forward_ios, size: 15.0,),
    ),
  );
}
