import 'package:flutter/material.dart';

Widget allTimeFavouriteTile(String title, String offer) {
  return Container(
    margin: const EdgeInsets.all(5),
    height: 160,
    width: 100,
    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0, 1),
        spreadRadius: 1,
      )
    ]),
    child: Column(
      children: [
        SizedBox(
          height: 120,
          child: Image.asset(title),
        ),
        Center(
          child: Text(
            offer,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
