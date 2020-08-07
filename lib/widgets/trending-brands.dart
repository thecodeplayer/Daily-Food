import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';

class TrendingBrands extends StatefulWidget {
  @override
  _TrendingBrandsState createState() => _TrendingBrandsState();
}

class _TrendingBrandsState extends State<TrendingBrands> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.trending_up, color: Colors.blueGrey,),
              SizedBox(
                width: 10.0,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Trending Brands',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
            ],
          ),
        ),
        Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    categories(Image.asset('assets/images/starbucks.png',),'Starbucks'),
                    categories(Image.asset('assets/images/shakeys.png'),"Shakey's"),
                    categories(Image.asset('assets/images/mcdonalds.png'),"McDonald's"),
                    categories(Image.asset('assets/images/krispy-kreme.png'),'Krispy Kreme'),
                    categories(Image.asset('assets/images/burger-king.png'),'Burger King'),
                  ],
                )
              ],
            )),
      ],
    );
  }
}

Widget categories(Image image, String title) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 150.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: dfGray,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: image,
          ),
          RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ))),
        ],
      ),
    );
  }

