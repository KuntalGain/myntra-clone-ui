import 'package:flutter/material.dart';

Widget benefitTile(String imageId, String title) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    height: 80,
    width: double.infinity,
    child: Row(
      children: [
        Image.asset(
          imageId,
          height: 60,
          width: 60,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
