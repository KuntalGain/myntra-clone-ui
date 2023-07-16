import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/widgets/insiders_criteria_tile.dart';

class InsidersProgram extends StatelessWidget {
  const InsidersProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1C20),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          'Myntra',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.favorite_outline,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/shopping-bag.png',
            height: 28,
            width: 28,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                'assets/insiders/27a84c38-cc59-4825-882c-03ae28e593811689334345790-Sale-Banner (1).jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Become An INSIDER!',
                style: TextStyle(
                  color: Colors.amber.shade700,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Join the Insider programme and earn \nSupercoins with every purchase and much \nmore. Log in now!',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'New Goal Criteria',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            criteriaTile('0', '7000'),
          ],
        ),
      ),
    );
  }
}
