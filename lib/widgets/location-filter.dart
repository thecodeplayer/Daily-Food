import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';

import '../common/color-common-constant.dart';

class LocationFilter extends StatefulWidget {
  @override
  _LocationFilterState createState() => _LocationFilterState();
}

class Location {
  String location;

  Location(this.location);

  static List<Location> getCompanies() {
    return <Location>[
      Location('San Fabian, Pangasinan'),
      Location('Mangaldan, Pangasinan'),
      Location('Dagupan City, Pangasinan'),
      Location('San Jacinto, Pangasinan'),
      Location('Lingayen, Pangasinan'),
      Location('San Carlos City, Pangasinan'),
    ];
  }
}

class _LocationFilterState extends State<LocationFilter> {
  List<Location> _companies = Location.getCompanies();
  List<DropdownMenuItem<Location>> _dropdownMenuItems;
  Location _selectedLocation;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedLocation = _dropdownMenuItems[0].value;
    super.initState();
  }


  List<DropdownMenuItem<Location>> buildDropdownMenuItems(List locations) {
    List<DropdownMenuItem<Location>> items = List();
    for (Location location in locations) {
      items.add(
        DropdownMenuItem(
          value: location,
          child: Text(location.location),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Location selectedLocation) {
    setState(() {
      _selectedLocation = selectedLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.location_on),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              RichText(
                text: TextSpan(
                    text: 'Delivery to',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ),
              DropdownButton(
                value: _selectedLocation,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
              )
            ],
          ),
          InkWell(
            onTap: filterPressed,
            child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: dfGray,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/filter-icon.png',
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Filter',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  void filterPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 550.0,
            color: dfTransparent,
            child: Container(
              child: ShowFilter(),
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

String _title = "";
String _price = "";
String _category = "";

class ShowFilter extends StatefulWidget {
  @override
  _ShowFilterState createState() => _ShowFilterState();
}

class _ShowFilterState extends State<ShowFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0),
            child: RichText(
                text: TextSpan(
                    text: 'Category',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500
                    ))),
          ),
          Container(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Burgers';
                        });
                      },
                          child: categories(Image.asset('assets/images/burger-icon.png',),'Burgers', _category)),
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Pizza';
                        });
                      },
                          child: categories(Image.asset('assets/images/pizza-icon.png'),'Pizza', _category)),
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Dessert';
                        });
                      },
                          child: categories(Image.asset('assets/images/dessert-icon.png'),'Dessert', _category)),
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Pasta';
                        });
                      },
                          child: categories(Image.asset('assets/images/pasta-icon.png'),'Pasta', _category)),
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Salad';
                        });
                      },
                          child: categories(Image.asset('assets/images/salad-icon.png'),'Salad', _category)),
                      InkWell(onTap: () {
                        setState(() {
                          _category = 'Drinks';
                        });
                      },
                          child: categories(Image.asset('assets/images/cocktail.png'),'Drinks', _category)),
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: RichText(
                text: TextSpan(
                    text: 'Sort by',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                        fontWeight: FontWeight.w500
                    ))),
          ),
          Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              _title = "Most Popular";
                            });
                          },
                          child: sortBy(
                            Icons.check_circle,
                            'Most Popular',
                            _title,
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _title = "Fast Delivery";
                            });
                          },
                          child: sortBy(
                            Icons.access_time,
                            'Fast Delivery',
                            _title,
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _title = "Recommended";
                            });
                          },
                          child: sortBy(
                            Icons.bookmark,
                            'Recommended',
                            _title,
                          )),
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: RichText(
                text: TextSpan(
                    text: 'Price Range',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                        fontWeight: FontWeight.w500
                    ))),
          ),
          Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(onTap: () {
                        setState(() {
                          _price = '\$';
                        });
                          },
                          child: priceRange('\$', _price)),
                      InkWell(
                          onTap: () {
                           setState(() {
                             _price = '\$\$';
                           });
                          },
                          child: priceRange('\$\$', _price)),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _price = '\$\$\$';
                            });
                          },
                          child: priceRange('\$\$\$', _price)),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _price = '\$\$\$\$';
                            });
                          },
                          child: priceRange('\$\$\$\$', _price)),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _price = '\$\$\$\$\$';
                            });
                          },
                          child: priceRange('\$\$\$\$\$', _price)),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _price = '\$\$\$\$\$\$';
                            });
                          },
                          child: priceRange('\$\$\$\$\$\$', _price))
                    ],
                  )
                ],
              )),
        ]);
  }
}

Widget categories(Image image, String title, String isActive) {
  if (title == isActive) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 150.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orangeAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 50.0,
            width: 50.0,
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
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  } else {
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
            height: 50.0,
            width: 50.0,
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
                    color: Colors.blueGrey,
                  ))),
        ],
      ),
    );
  }
}

Widget sortBy(
  IconData icon,
  String title,
  String isActive,
) {
  if (title == isActive) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 60.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orangeAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  } else {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 60.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: dfGray,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blueGrey,
          ),
          SizedBox(
            width: 10.0,
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
}

Widget priceRange(String title, String isActive) {
  if (title == isActive) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orangeAccent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  } else {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: dfGray,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
              text: TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey,
                  ))),
        ],
      ),
    );
  }
}


