import 'package:flutter/material.dart';

Widget drawerTile(IconData icon, String title) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 25,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
