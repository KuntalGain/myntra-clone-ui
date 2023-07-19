import 'package:flutter/material.dart';

Widget allTimeFavouriteTile(String title, String offer) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 160,
    width: 100,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0, 1),
        spreadRadius: 1,
      )
    ]),
    child: Column(
      children: [
        Container(
          height: 120,
          color: Colors.deepPurple,
        ),
        Center(
          child: Text(
            offer,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
