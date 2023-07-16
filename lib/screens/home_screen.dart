import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Image.asset(
            'assets/add.png',
            height: 28,
            width: 28,
          ),
          const SizedBox(
            width: 10,
          ),
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
      body: const Column(
        children: [
          // categories List
          // Promotional Advertisement
          // Signup for exiciting deals
          // carosaul advertisement
          // offers - 100% original,Free shipping,Easy returns
          // Bank offers

          // All Time Favourite section
          // gridview.builder
          // view all button

          // Featured selection
          // Listview horizontal
        ],
      ),
    );
  }
}
