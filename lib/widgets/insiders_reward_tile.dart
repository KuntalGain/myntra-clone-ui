import 'package:flutter/material.dart';

Widget insidersPromotionalTile(String imageId, String title) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 500,
    width: 250,
    color: Colors.deepPurple,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 200,
          child: Image.asset(
            imageId,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
