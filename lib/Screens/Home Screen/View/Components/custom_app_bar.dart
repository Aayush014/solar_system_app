import 'package:flutter/material.dart';

Widget homeAppBar(double height, double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: height / 15,
        width: width / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white10,
        ),
        child: Icon(
          Icons.home_outlined,
          size: 35,
          color: Color(0xff008DCA),
        ),
      ),
      Container(
        height: height / 15,
        width: width / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white10,
        ),
        child: Icon(
          Icons.favorite_border,
          size: 35,
          color: Color(0xff008DCA),
        ),
      ),
    ],
  );
}