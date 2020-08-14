import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.security, color: Colors.blueGrey,),
                    SizedBox(
                      width: 10.0,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Top Offers',
                            style: GoogleFonts.notoSans(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            text: 'See All',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey,
                            ))),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.redAccent
                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_forward_ios, size: 15.0, color: dfWhite,),
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: RichText(
                text: TextSpan(
                    text: 'Get 20 - 50% Off',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey,
                    ))),
          ),
          topOffers()
        ],
      ),
    );
  }
}

Widget topOffers(){
  return Container(
    height: 300.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                topOfferItem(Image.asset('assets/images/steak.jpg',),'Steak House', 'Dagupan City, Pangasinan', 'Php 30.00 off | Use CODEDFSH', 'Php 450.00 for two'),
                topOfferItem(Image.asset('assets/images/chessy-bites.jpg',),'Chessy Bites', 'Dagupan City, Pangasinan', 'Php 50.00 off | Use CODEDFCB', 'Php 370.00 for two'),
              ],
            ),
            Column(
              children: <Widget>[
                topOfferItem(Image.asset('assets/images/food-republic.jpg',),'Food Republic', 'San Fabian, Pangasinan', 'Php 20.00 off | Use CODEDFFR', 'Php 230.00 for two'),
                topOfferItem(Image.asset('assets/images/sea-breeze.jpg',),'Sea Breeze', 'Mangaldan, Pangasinan', 'Php 70.00 off | Use CODEDFSB', 'Php 550.00 for three'),
              ],
            ),
            Column(
              children: <Widget>[
                topOfferItem(Image.asset('assets/images/dinner-club.jpg',),'Dinner Club', 'San Fabian, Pangasinan', 'Php 50.00 off | Use CODEDFDC', 'Php 350.00 for two'),
                topOfferItem(Image.asset('assets/images/hot-box.jpg',),'Hot Box', 'Dagupan City, Pangasinan', 'Php 80.00 off | Use CODEDFHB', 'Php 450.00 for two'),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget topOfferItem(Image image, String restaurant, String location, String discount, String offer, ){
  return Container(
    margin: const EdgeInsets.all(5.0),
    height: 130.0,
    width: 350.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: dfGray,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10.0),
          width: 160.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: image,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: restaurant,
                          style: GoogleFonts.montserrat(
                            fontSize: 18.0,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500
                          ))),
                  RichText(
                      text: TextSpan(
                          text: location,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ))),
                  RichText(
                      text: TextSpan(
                          text: discount,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.red,
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: offer,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ))),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}