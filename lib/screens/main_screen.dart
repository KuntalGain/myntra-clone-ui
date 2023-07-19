import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/screens/home_screen.dart';
import 'package:myntra_clone_ui/screens/insider_screen.dart';
import 'package:myntra_clone_ui/widgets/drawer_tile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    InsidersProgram(),
  ];

  int currentScreenIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          );
        }),
        title: const Text(
          'Myntra',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          if (currentScreenIdx == 0)
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
      body: _screens[currentScreenIdx],
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreenIdx = 0;
                  });
                  Navigator.of(context).pop();
                },
                child: drawerTile(Icons.home, 'Homepage'),
              ),
              Divider(
                color: Colors.black,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreenIdx = 1;
                  });

                  Navigator.of(context).pop();
                },
                child:
                    drawerTile(Icons.supervised_user_circle_sharp, 'Insiders'),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
