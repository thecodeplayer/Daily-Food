import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stepo/stepo.dart';

int _quantity;
class AllScreen extends StatefulWidget {
  @override
  _AllScreenState createState() => _AllScreenState();
}
class _AllScreenState extends State<AllScreen> {
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_basket),
          onPressed: () {
            addtoCart();
          },
        ),
        body: Container(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: 'Seafood Kare-Kare',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey,
                                  ))),
                        ],
                      ),
                    ),
                    Container(
                      height: 350.0,
                      child: Hero(
                        tag: 'seafood',
                          child: Image.asset('assets/images/seafood-kare-kare.png')),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 30.0, left: 30.0, top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      text: 'Great Taste',
                                      style: TextStyle(
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey,
                                      ))),
                              Icon(Icons.favorite, color: Colors.red,)
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                  text: 'Assorted seafood in peanut butter sauce, bok choy, roasted eggplant, and string beans.',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blueGrey,
                                  ))),
                          SizedBox(
                            height: 20.0,
                          ),
                          RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                  text: 'Price',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blueGrey,
                                  ))),
                          RichText(
                              text: TextSpan(
                                  text: 'Php 280.00',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.blueGrey,
                                  ))),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.local_offer, color: Colors.redAccent,),
                              RichText(
                                  text: TextSpan(
                                      text: ' Php 30.00 off | Use DailyFoodGT',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blueGrey,
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black12,
                      height: 25.0,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 20.0, bottom: 15.0),
                      child: Row(
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: "Special For You",
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ))),
                        ],
                      ),
                    ),
                    getAllContainer()
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
  void addtoCart() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 350.0,
            color: dfTransparent,
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  orderedAll(Image.asset('assets/images/seafood-kare-kare.png', height: 100.0,), 'Seafood Kare-Kare\n', 'Php 280.00', 'Great Taste'),
                  SizedBox(
                    height: 120.0,
                  ),
                  InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Successfully Added!",
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    },
                    child: Container(
                      width: 350.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent,
                      ),
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                              text: 'Add to Cart',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),)),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: dfWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0))),
            ),
          );
        });
  }
}

Widget orderedAll(Image image, String title, String total, String restaurant) {
  return Card(
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
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ), children: <TextSpan>[
              TextSpan(text: restaurant, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500))])),
      ),
      subtitle:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RichText(
              text: TextSpan(
                text: total,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                ),)),
        ],
      ),
      trailing:  Container(
        height: 40.0,
        padding: const EdgeInsets.only(top: 8.0),
        child: Stepo(
          width: 100.0,
          key: UniqueKey(),
          backgroundColor: Colors.orangeAccent,
          style: Style.horizontal,
          textColor: Colors.white,
          animationDuration: Duration(milliseconds: 100),
          iconColor: Colors.white,
          fontSize: 20,
          iconSize: 30,
          initialCounter: _quantity,
          lowerBound: 1,
          upperBound: 10,
          onIncrementClicked: (counter) {
            _quantity = counter;
          },
          onDecrementClicked: (counter) {
            _quantity = counter;
          },
        ),
      ),
    ),
  );
}

Widget getAllContainer() {
  return Container(
    height: 260.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            foodTemplate(
                Image.asset(
                  'assets/images/ginataang-isda.png',
                  height: 80.0,
                ),
                'Ginataang Isda',
                'Kusina Express',
                'Php 220.00',
                Icons.bookmark, 'isda'),
            foodTemplate(
                Image.asset(
                  'assets/images/crispy-pata.png',
                  height: 80.0,
                ),
                'Crispy Pata',
                'Mesa',
                'Php 250.00',
                Icons.bookmark, 'pata'),
            foodTemplate(
                Image.asset(
                  'assets/images/pork-humba.png',
                  height: 80.0,
                ),
                'Pork Humba',
                'Sangkap',
                'Php 235.00',
                Icons.check_circle, 'humba'),
            foodTemplate(
                Image.asset(
                  'assets/images/sisig.png',
                  height: 80.0,
                ),
                'Sizzling Sisig',
                'Sizzling Plate',
                'Php 200.00',
                Icons.check_circle, 'ssig'),
            foodTemplate(
                Image.asset(
                  'assets/images/seafood-kare-kare.png',
                  height: 80.0,
                ),
                'Seafood Kare-Kare',
                'Great Taste',
                'Php 280.00',
                Icons.access_time, 'kare-kare'),
          ],
        )
      ],
    ),
  );
}

Widget foodTemplate(Image image, String title, String subtitle, String price, IconData iconData, String tag) {
  return Container(
      margin: const EdgeInsets.all(10.0),
      height: 260.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: dfGhostWhite,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  iconData,
                  color: Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.blueGrey,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
              tag: tag,
              child: image),
          SizedBox(
            height: 25.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      text: title,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ))),
              RichText(
                  text: TextSpan(
                      text: subtitle,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueGrey,
                      ))),
              RichText(
                  text: TextSpan(
                      text: price,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ))),
            ],
          )
        ],
      ));
}
