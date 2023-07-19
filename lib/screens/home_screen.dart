import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/data/product_data.dart';
import 'package:myntra_clone_ui/model/product_model.dart';
import 'package:myntra_clone_ui/model/user_model.dart';
import 'package:myntra_clone_ui/widgets/favourite_tile.dart';
import 'package:myntra_clone_ui/widgets/product_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIdx = 0;

  // List of Promotional Ads
  final List<String> carouselItems = [
    'assets/home_icons/ad-2.jpg',
    'assets/home_icons/ad-3.jpg',
    'assets/home_icons/ad-4.jpg',
    'assets/home_icons/ad-5.jpg',
    'assets/home_icons/ad-6.jpg',
    'assets/home_icons/ad-7.jpg',
    'assets/home_icons/ad-8.jpg',
  ];

  // List of Featured Items
  final List<String> featuredItems = [
    'assets/home_icons/f-1.jpg',
    'assets/home_icons/f-2.jpg',
    'assets/home_icons/f-3.jpg',
  ];

  // List of Category by Type of Users
  List<UserModel> userCategory = [
    UserModel(imageId: 'assets/home_icons/cat-1.png', userType: 'MEN'),
    UserModel(imageId: 'assets/home_icons/cat-2.png', userType: 'WOMEN'),
    UserModel(imageId: 'assets/home_icons/cat-3.png', userType: 'KIDS'),
    UserModel(imageId: 'assets/home_icons/cat-4.png', userType: 'FOOTWEAR'),
    UserModel(imageId: 'assets/home_icons/cat-5.png', userType: 'COSMETICS'),
    UserModel(imageId: 'assets/home_icons/cat-6.png', userType: 'ACCESSORIES'),
  ];

  // List of Categories
  List<String> category = [
    'All',
    'Kurta Sets',
    'Shirts',
    'Casual Shoes',
    'Flip Flops',
    'Dresses',
    'Trousers'
  ];

  int selectedIdx = 0;

  // Method for Keep Track of Ads Number
  Widget _buildTrackingBubbles() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: carouselItems.map((color) {
        int index = carouselItems.indexOf(color);
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIdx == index ? Colors.blue : Colors.grey,
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filter out Products by Defined Category
    List<ProductModel> filteredItems = allItems.where((item) {
      return category[selectedIdx] == 'All' ||
          item.category == category[selectedIdx];
    }).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // categories List
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userCategory.length,
                itemBuilder: (ctx, idx) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(userCategory[idx].imageId),
                          ),
                        ),
                      ),
                      Text(
                        userCategory[idx].userType,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // In-App Promotional Ad

            Container(
              height: 170,
              decoration: const BoxDecoration(),
              child: Image.asset('assets/home_icons/ad-1.jpg'),
            ),

            // Button to signup/Login

            Container(
              margin: const EdgeInsets.all(10),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Signup for Exciting Deals!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
            ),

            // carosaul advertisement

            SizedBox(
              height: 180,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  height: 180,
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIdx = index;
                    });
                  },
                ),
                items: carouselItems.map((image) {
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            _buildTrackingBubbles(),

            // offers - 100% original,Free shipping,Easy returns

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade600,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/medal.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                        const Text(
                          '100% Original\n Products',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade600,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/refund.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                        const Text(
                          'Free Shipping\nOn 1st Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade600,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/fast-delivery.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                        const Text(
                          'Easy Returns \n& Refunds',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Featured selection

            SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx, idx) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      width: 120,
                      child: Image.asset(featuredItems[idx]),
                    );
                  }),
            ),

            // All Time Favourite section

            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'ALL-TIME FAVOURITES',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // List of price categories

            Row(
              children: [
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-1.jpg", 'Under ₹400')),
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-2.jpg", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-3.jpg", 'Under ₹400')),
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-4.jpg", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-5.jpg", 'Under ₹400')),
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-6.jpg", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-7.jpg", 'Under ₹400')),
                Expanded(
                    child: allTimeFavouriteTile(
                        "assets/home_icons/c-8.jpg", 'Under ₹400')),
              ],
            ),

            // view all button

            Container(
              margin: const EdgeInsets.all(10),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
            ),

            // Product Lists

            // categories Selection

            SizedBox(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (ctx, idx) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIdx = idx;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          height: 20,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: (selectedIdx == idx)
                                  ? Colors.pink
                                  : Colors.black,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              category[idx],
                              style: TextStyle(
                                fontSize: 17,
                                color: (selectedIdx == idx)
                                    ? Colors.pink
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
            const SizedBox(
              height: 15,
            ),

            // Product Lists
            SizedBox(
              height: (filteredItems.length / 2) * 380,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: (filteredItems.length / 2).ceil(),
                itemBuilder: (BuildContext context, int index) {
                  // List<ProductModel> filteredItems = allItems.where((item) {
                  //   return category[selectedIdx] == 'All' ||
                  //       item.category == category[selectedIdx];
                  // }).toList();

                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  if (firstIndex < filteredItems.length) {
                    if (secondIndex < filteredItems.length) {
                      // Display two items in a row
                      return Row(
                        children: [
                          Expanded(
                              child:
                                  productItemTile(filteredItems[firstIndex])),
                          Expanded(
                              child:
                                  productItemTile(filteredItems[secondIndex])),
                        ],
                      );
                    } else {
                      // Display a single item in a row for the last item
                      return productItemTile(filteredItems[firstIndex]);
                    }
                  } else {
                    return const SizedBox
                        .shrink(); // Empty widget if no more items
                  }
                },
              ),
            ),

            // view more button

            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text(
                  'View More Products',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
