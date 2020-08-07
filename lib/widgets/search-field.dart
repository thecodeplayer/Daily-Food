import 'package:dailyfood/common/color-common-constant.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: dfGray,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: IconButton(
            color: Colors.black12,
            icon: Icon(Icons.search),
            iconSize: 20.0,
            onPressed: () {},
          ),
          contentPadding: EdgeInsets.all(15.0),
          hintText: 'Search on Daily Food',
        ),
      ),
    );
  }
}