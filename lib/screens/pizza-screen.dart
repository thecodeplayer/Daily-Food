import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stepo/stepo.dart';

enum Sizes { pizza, small, medium, large }

String price = '350.00 - 500.00';
int quantity;
int _quantity;
double _bigger = 340.0;
double _angle = 0;
Sizes selectedSize = Sizes.pizza;
String size = 'Please select size';
class PizzaScreen extends StatefulWidget {
  @override
  _PizzaScreenState createState() => _PizzaScreenState();
}
class _PizzaScreenState extends State<PizzaScreen> {

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
                                text: 'Barbeque Chicken Pizza',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    height: 390.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 4.0,
                            child: Image.asset('assets/images/pizza-plate.png', height: 400.0,)),
                        Center(
                          child: FutureBuilder(
                            builder: (BuildContext context, AsyncSnapshot snapshot) {
                              return getCustomContainer();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0)),
                          color: (selectedSize == Sizes.small)
                              ? Colors.orangeAccent
                              : Colors.black12,
                          onPressed: () {
                            setState(() {
                              size = 'Small';
                              selectedSize = Sizes.small;
                              _bigger = 300;
                              _angle = 2;
                              price = '350.0';
                            });
                          },
                          child: Text('S',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: (selectedSize == Sizes.small)
                                  ? Colors.white
                                  : Colors.black,
                            ),)),
                      FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0)),
                          color: (selectedSize == Sizes.medium)
                              ? Colors.orangeAccent
                              : Colors.black12,
                          onPressed: () {
                            setState(() {
                              size = 'Medium';
                              selectedSize = Sizes.medium;
                              _bigger = 350;
                              _angle = 4;
                              price = '420.0';
                            });
                          },
                          child: Text('M',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: (selectedSize == Sizes.medium)
                                  ? Colors.white
                                  : Colors.black,
                            ),)),
                      FlatButton(

                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0)),
                          color: (selectedSize == Sizes.large)
                              ? Colors.orangeAccent
                              : Colors.black12,
                          onPressed: () {
                            setState(() {
                              size = 'Large';
                              selectedSize = Sizes.large;
                              _bigger = 400;
                              _angle = 6;
                              price = '500.0';
                            });
                          },
                          child: Text(
                            'L',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: (selectedSize == Sizes.large)
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
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
                                   text: 'Pizza World',
                                   style: TextStyle(
                                     fontSize: 25.0,
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
                                text: 'A topping of spicy barbeque sauce, diced chicken, cilantro, peppers, and onion all covered with cheese, and baked to bubbly goodness!',
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
                                text: 'Php $price',
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
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))),
                      ],
                    ),
                  ),
                  getPizzaContainer()
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
                  orderedPizza(Image.asset('assets/images/barbeque-pizza.png', height: 100.0,), 'Barbeque Chicken\n', 'Php $price', size),
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

Widget getCustomContainer() {
  switch (selectedSize) {
    case Sizes.pizza:
      return pizzaContainer();
    case Sizes.small:
      return smallPizza();
    case Sizes.medium:
      return mediumPizza();
    case Sizes.large:
      return largePizza();
  }
  return pizzaContainer();
}

Widget pizzaContainer() {
  return Transform.rotate(
    angle: _angle,
    child: Container(
      height: 400.0,
      child: AnimatedContainer(
        width: _bigger,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Hero(
            tag: 'barbeque',
            child: Image.asset('assets/images/barbeque-pizza-menu-new.png')),
        duration: Duration(seconds: 1),
        curve: Curves.easeOutQuint,
      ),
    ),
  );
}

Widget smallPizza() {
  return Transform.rotate(
    angle: _angle,
    child: Container(
      height: 400.0,
      child: AnimatedContainer(
        width: _bigger,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Hero(
            tag: 'barbeque',
            child: Image.asset('assets/images/barbeque-pizza-menu-new.png')),
        duration: Duration(seconds: 1),
        curve: Curves.easeOutQuint,
      ),
    ),
  );
}

Widget mediumPizza() {
  return Transform.rotate(
    angle: _angle,
    child: Container(
      height: 400.0,
      child: AnimatedContainer(
        width: _bigger,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Hero(
            tag: 'barbeque',
            child: Image.asset('assets/images/barbeque-pizza-menu-new.png')),
        duration: Duration(seconds: 1),
        curve: Curves.easeOutQuint,
      ),
    ),
  );
}

Widget largePizza() {
  return Transform.rotate(
    angle: _angle,
    child: Container(
      height: 400.0,
      child: AnimatedContainer(
        width: _bigger,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        child: Hero(
            tag: 'barbeque-pizza',
            child: Image.asset('assets/images/barbeque-pizza-menu-new.png')),
        duration: Duration(seconds: 1),
        curve: Curves.easeOutQuint,
      ),
    ),
  );
}

Widget orderedPizza(Image image, String title, String total, String size) {
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
              TextSpan(text: 'Size: $size', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500))])),
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

Widget getPizzaContainer() {
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
                  'assets/images/italian-pizza.png',
                  height: 80.0,
                ),
                'Italian',
                'Pizza Parlor',
                'Php 450.00',
                Icons.check_circle, 'italy'),
            foodTemplate(
                Image.asset(
                  'assets/images/hawaiian-pizza.png',
                  height: 80.0,
                ),
                'Hawaiian',
                'Oven Pizza',
                'Php 300.00',
                Icons.access_time, 'hawaii'),
            foodTemplate(
                Image.asset(
                  'assets/images/sausage-pizza.png',
                  height: 80.0,
                ),
                'Sausage',
                'Mr. Pizza',
                'Php 350.00',
                Icons.access_time, 'ssauge'),
            foodTemplate(
                Image.asset(
                  'assets/images/pepperoni-pizza-menu.png',
                  height: 95.0,
                ),
                'Pepperoni',
                'County Pizza',
                'Php 330.00',
                Icons.access_time, 'pproni'),
            foodTemplate(
                Image.asset(
                  'assets/images/barbeque-pizza.png',
                  height: 80.0,
                ),
                'Barbeque',
                'Pizza World',
                'Php 350.00',
                Icons.bookmark, 'bbq'),
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


