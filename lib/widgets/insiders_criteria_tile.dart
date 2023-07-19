import 'package:flutter/material.dart';

Widget criteriaTile(String trackingStr, String spendTitle, String goal) {
  return Container(
    padding: const EdgeInsets.all(12),
    height: 100,
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 2,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFF282c3f),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Image.asset(
          'assets/insiders/icon.png',
          fit: BoxFit.cover,
          height: 60,
          width: 60,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 38,
              width: 170,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  trackingStr,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38,
              width: 170,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  spendTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF9fa1a7),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          height: 80,
          width: 92,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                goal,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Goal',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
