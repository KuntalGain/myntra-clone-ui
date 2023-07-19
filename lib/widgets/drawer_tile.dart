import 'package:flutter/material.dart';

Widget drawerTile(IconData icon, String title) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 25,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
