import 'package:dailyfood/common/color-common-constant.dart';
import 'package:dailyfood/screens/all-screen.dart';
import 'package:dailyfood/screens/pizza-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Menu { all, pizza, burgers, dessert, seafood }

class MenuItems extends StatefulWidget {
  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems>{
  Menu selectedMenu = Menu.all;

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
              Icon(Icons.arrow_upward, color: Colors.blueGrey,),
              SizedBox(
                width: 10.0,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Top Picks For You',
                      style: GoogleFonts.notoSans(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: RichText(
              text: TextSpan(
                  text: 'Deliciousness jumping into the mouth',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.blueGrey,
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
          child: Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: (selectedMenu == Menu.all)
                          ? Colors.redAccent
                          : Colors.white,
                      onPressed: () {
                        setState(() {
                          selectedMenu = Menu.all;
                        });
                      },
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: (selectedMenu == Menu.all)
                                ? Colors.white
                                : Colors.black12),
                      ),
                    ),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: (selectedMenu == Menu.pizza)
                          ? Colors.redAccent
                          : Colors.white,
                      onPressed: () {
                        setState(() {
                          selectedMenu = Menu.pizza;
                        });
                      },
                      child: Text("Pizza",
                          style: TextStyle(
                              color: (selectedMenu == Menu.pizza)
                                  ? Colors.white
                                  : Colors.black12)),
                    ),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: (selectedMenu == Menu.burgers)
                          ? Colors.redAccent
                          : Colors.white,
                      onPressed: () {
                        setState(() {
                          selectedMenu = Menu.burgers;
                        });
                      },
                      child: Text("Burgers",
                          style: TextStyle(
                              color: (selectedMenu == Menu.burgers)
                                  ? Colors.white
                                  : Colors.black12)),
                    ),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: (selectedMenu == Menu.dessert)
                          ? Colors.redAccent
                          : Colors.white,
                      onPressed: () {
                        setState(() {
                          selectedMenu = Menu.dessert;
                        });
                      },
                      child: Text("Desserts",
                          style: TextStyle(
                              color: (selectedMenu == Menu.dessert)
                                  ? Colors.white
                                  : Colors.black12)),
                    ),
                    FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: (selectedMenu == Menu.seafood)
                          ? Colors.redAccent
                          : Colors.white,
                      onPressed: () {
                        setState(() {
                          selectedMenu = Menu.seafood;
                        });
                      },
                      child: Text("Seafood",
                          style: TextStyle(
                              color: (selectedMenu == Menu.seafood)
                                  ? Colors.white
                                  : Colors.black12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return getCustomContainer();
          },
        )
      ],
    );
  }

  Widget getCustomContainer() {
    switch (selectedMenu) {
      case Menu.all:
        return getAllContainer();
      case Menu.pizza:
        return getPizzaContainer();
      case Menu.burgers:
        return getBurgersContainer();
      case Menu.dessert:
        return getDessertContainer();
      case Menu.seafood:
        return getSeaFoodContainer();
    }
    return getAllContainer();
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
              InkWell(
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => AllScreen()));
                },
                child: foodTemplate(
                    Image.asset(
                      'assets/images/seafood-kare-kare.png',
                      height: 80.0,
                    ),
                    'Seafood Kare-Kare',
                    'Great Taste',
                    'Php 280.00',
                    Icons.access_time, 'seafood'),
              ),
              foodTemplate(
                  Image.asset(
                    'assets/images/ginataang-isda.png',
                    height: 80.0,
                  ),
                  'Ginataang Isda',
                  'Kusina Express',
                  'Php 220.00',
                  Icons.bookmark, 'ginataan'),
              foodTemplate(
                  Image.asset(
                    'assets/images/crispy-pata.png',
                    height: 80.0,
                  ),
                  'Crispy Pata',
                  'Mesa',
                  'Php 250.00',
                  Icons.bookmark, 'crispy'),
              foodTemplate(
                  Image.asset(
                    'assets/images/pork-humba.png',
                    height: 80.0,
                  ),
                  'Pork Humba',
                  'Sangkap',
                  'Php 235.00',
                  Icons.check_circle, 'pork'),
              foodTemplate(
                  Image.asset(
                    'assets/images/sisig.png',
                    height: 80.0,
                  ),
                  'Sizzling Sisig',
                  'Sizzling Plate',
                  'Php 200.00',
                  Icons.check_circle, 'sisig'),
            ],
          )
        ],
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
              InkWell(
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => PizzaScreen()));
                },
                  child: foodTemplate(
                      Image.asset(
                        'assets/images/barbeque-pizza.png',
                        height: 80.0,
                      ),
                      'Barbeque',
                      'Pizza World',
                      'Php 350.00',
                      Icons.bookmark, 'barbeque-pizza')),
              foodTemplate(
                  Image.asset(
                    'assets/images/italian-pizza.png',
                    height: 80.0,
                  ),
                  'Italian',
                  'Pizza Parlor',
                  'Php 450.00',
                  Icons.check_circle, 'italian'),
              foodTemplate(
                  Image.asset(
                    'assets/images/hawaiian-pizza.png',
                    height: 80.0,
                  ),
                  'Hawaiian',
                  'Oven Pizza',
                  'Php 300.00',
                  Icons.access_time, 'hawaiian'),
              foodTemplate(
                  Image.asset(
                    'assets/images/sausage-pizza.png',
                    height: 80.0,
                  ),
                  'Sausage',
                  'Mr. Pizza',
                  'Php 350.00',
                  Icons.access_time, 'sausage'),
              foodTemplate(
                  Image.asset(
                    'assets/images/pepperoni-pizza-menu.png',
                    height: 95.0,
                  ),
                  'Pepperoni',
                  'County Pizza',
                  'Php 330.00',
                  Icons.access_time, 'pepperoni')
            ],
          )
        ],
      ),
    );
  }

  Widget getBurgersContainer() {
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
                    'assets/images/bacon-cheese-burger.png',
                    height: 80.0,
                  ),
                  'Bacon Cheese',
                  'Burger House',
                  'Php 180.00',
                  Icons.bookmark, 'bacon'),
              foodTemplate(
                  Image.asset(
                    'assets/images/buffalo-burger.png',
                    height: 80.0,
                  ),
                  'Buffalo',
                  'Royal Burger',
                  'Php 280.00',
                  Icons.check_circle, 'buffalo'),
              foodTemplate(
                  Image.asset(
                    'assets/images/double-cheese-bacon-burger.png',
                    height: 80.0,
                  ),
                  'Double Cheese \nBacon',
                  'Fries and Burgers',
                  'Php 250.00',
                  Icons.check_circle, 'double cheese'),
              foodTemplate(
                  Image.asset(
                    'assets/images/beef-burger.png',
                    height: 80.0,
                  ),
                  'Beef',
                  'Burger Queen',
                  'Php 200.00',
                  Icons.access_time, 'beef'),
              foodTemplate(
                  Image.asset(
                    'assets/images/chicken-burger.png',
                    height: 95.0,
                  ),
                  'Chicken',
                  'Burger Garage',
                  'Php 150.00',
                  Icons.bookmark, 'chicken')
            ],
          )
        ],
      ),
    );
  }

  Widget getDessertContainer() {
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
                    'assets/images/caramel-apple-cheesecake.png',
                    height: 80.0,
                  ),
                  'Caramel Apple \nCheesecake',
                  'The Cheescake Factory',
                  'Php 250.00',
                  Icons.bookmark, 'caramel'),
              foodTemplate(
                  Image.asset(
                    'assets/images/macaroon-cheesecake.png',
                    height: 80.0,
                  ),
                  'Macaroon \nCheesecake',
                  "Expresso 'n Desserts",
                  'Php 200.00',
                  Icons.bookmark, 'macaroon'),
              foodTemplate(
                  Image.asset(
                    'assets/images/chocolate-almond-torte.png',
                    height: 80.0,
                  ),
                  'Chocolate Almond Torte',
                  'The Bakery',
                  'Php 280.00',
                  Icons.bookmark, 'chocolate'),
              foodTemplate(
                  Image.asset(
                    'assets/images/carrot-cake.png',
                    height: 80.0,
                  ),
                  'Carrot Cake',
                  'Sugarhouse',
                  'Php 300.00',
                  Icons.bookmark, 'carrot'),
              foodTemplate(
                  Image.asset(
                    'assets/images/oreo-cake.png',
                    height: 95.0,
                  ),
                  'Oreo Cake',
                  'Good Cafe',
                  'Php 350.00',
                  Icons.bookmark, 'oreo')
            ],
          )
        ],
      ),
    );
  }

  Widget getSeaFoodContainer() {
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
                    'assets/images/seafood-trail.png',
                    height: 80.0,
                  ),
                  'Seafood Trail',
                  'Seafood Island',
                  'Php 950.00',
                  Icons.check_circle, 'trail'),
              foodTemplate(
                  Image.asset(
                    'assets/images/tuna-steak.png',
                    height: 80.0,
                  ),
                  'Tuna Steak',
                  'Tuna House',
                  'Php 350.00',
                  Icons.bookmark, 'tuna'),
              foodTemplate(
                  Image.asset(
                    'assets/images/seafood-platter.png',
                    height: 95.0,
                  ),
                  'Seafood Platter',
                  'SeaFood City',
                  'Php 850.00',
                  Icons.check_circle, 'platter'),
              foodTemplate(
                  Image.asset(
                    'assets/images/breaded-shrimp.png',
                    height: 95.0,
                  ),
                  'Breaded Shrimp',
                  "Crabs 'n Shrimps",
                  'Php 300.00',
                  Icons.bookmark, 'breaded'),
              foodTemplate(
                  Image.asset(
                    'assets/images/grilled-salmon.png',
                    height: 95.0,
                  ),
                  'Grilled Salmon',
                  'Sizzling Seafood',
                  'Php 350.00',
                  Icons.access_time, 'grilled'
              )
            ],
          )
        ],
      ),
    );
  }
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
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
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
                      style: GoogleFonts.montserrat(
                        fontSize: 17.0,
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
