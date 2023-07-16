import 'package:flutter/material.dart';

Widget criteriaTile(String spendPrice, String goal) {
  return Container(
    padding: EdgeInsets.all(12),
    height: 100,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Color(0xFF282c3f),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Image.asset(
          'assets/insiders/af3827a0-d814-4adf-9c64-875056c24b571623268092599-Slice-8-3x--1---1-__1_-removebg-preview.png',
          height: 50,
          width: 50,
        ),
        Center(
            child: Text(
          '₹ ${spendPrice}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
        )),
      ],
    ),
  );
}
