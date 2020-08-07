import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stepo/stepo.dart';
import 'pizza-screen.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () {
            Navigator.pop(context);
          }),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              text: "My Cart",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ))),
                    ],
                  ),
                ),
                Container(
                  height: 215.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      orderedPizza(Image.asset('assets/images/barbeque-pizza.png', height: 100.0,), 'Barbeque Chicken\n', 'Php $price', size, quantity),
                      orderedAll(Image.asset('assets/images/seafood-kare-kare.png', height: 100.0,), 'Seafood Kare-Kare\n', 'Php 280.00', 'Great Taste', quantity),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              text: "Order",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey,
                              ))),
                      RichText(
                          text: TextSpan(
                              text: "Php 630.00",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey,
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              text: "Delivery",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey,
                              ))),
                      RichText(
                          text: TextSpan(
                              text: "Php 150.00",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey,
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              text: "Total",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ))),
                      RichText(
                          text: TextSpan(
                              text: "Php 780.00",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.redAccent,
                              ))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(
                                text: 'Address',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      text: 'San Fabian, Pangasinan',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ))),
                              RichText(
                                  text: TextSpan(
                                      text: 'Change',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orangeAccent,
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(
                                text: 'Payment Method',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                  text: TextSpan(
                                      text: 'Cash on Delivery',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ))),
                              RichText(
                                  text: TextSpan(
                                      text: 'Change',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orangeAccent,
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_offer),
                  title: RichText(
                      text: TextSpan(
                        text: 'Apply Coupon',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blueGrey,
                        ),)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 0.0, bottom: 10.0),
                  child: InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Ordered Successfully!",
                          gravity: ToastGravity.BOTTOM,
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
                              text: 'Place Order',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),)),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }
}

Widget orderedPizza(Image image, String title, String price, String size, int quantity) {
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
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ), children: <TextSpan>[
              TextSpan(text: 'Size: $size', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500))])),
      ),
      subtitle:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RichText(
              text: TextSpan(
                text: price,
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
          width: 80.0,
          key: UniqueKey(),
          backgroundColor: Colors.orangeAccent,
          style: Style.horizontal,
          textColor: Colors.white,
          animationDuration: Duration(milliseconds: 100),
          iconColor: Colors.white,
          fontSize: 20,
          iconSize: 30,
          initialCounter: quantity,
          lowerBound: 0,
          upperBound: 10,
          onIncrementClicked: (counter) {
            quantity = counter;
          },
          onDecrementClicked: (counter) {
            quantity = counter;
          },
        ),
      ),
    ),
  );
}

Widget orderedAll(Image image, String title, String total, String restaurant, int quantity) {
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
                  fontSize: 17.0,
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
          width: 80.0,
          key: UniqueKey(),
          backgroundColor: Colors.orangeAccent,
          style: Style.horizontal,
          textColor: Colors.white,
          animationDuration: Duration(milliseconds: 100),
          iconColor: Colors.white,
          fontSize: 20,
          iconSize: 30,
          initialCounter: quantity,
          lowerBound: 1,
          upperBound: 10,
          onIncrementClicked: (counter) {
            quantity = counter;
          },
          onDecrementClicked: (counter) {
            quantity = counter;
          },
        ),
      ),
    ),
  );
}
