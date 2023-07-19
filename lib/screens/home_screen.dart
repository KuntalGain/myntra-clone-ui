import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/data/product_data.dart';
import 'package:myntra_clone_ui/model/product_model.dart';
import 'package:myntra_clone_ui/widgets/favourite_tile.dart';
import 'package:myntra_clone_ui/widgets/product_item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIdx = 0;
  final List<Color> carouselColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.purple,
  ];

  List<String> category = [
    'All',
    'Kurta Sets',
    'Shirts',
    'Heels',
    'Flip Flops',
    'Dresses',
    'Trousers'
  ];

  int selectedIdx = 0;

  Widget _buildTrackingBubbles() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: carouselColors.map((color) {
        int index = carouselColors.indexOf(color);
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
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
    bool isPressed = false;

    List<String> items = [
      'Hello World',
      'Namaste World',
      'Namaste Duniya',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // categories List
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 11,
                itemBuilder: (ctx, idx) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text('data'),
                    ],
                  );
                },
              ),
            ),
            // Promotional Advertisement

            Container(
              height: 170,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),

            // Signup for exiciting deals

            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
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

            Container(
              height: 180,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  height: 180,
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIdx = index;
                    });
                  },
                ),
                items: carouselColors.map((color) {
                  return Container(
                    width: double.infinity,
                    color: color,
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _buildTrackingBubbles(),
            // offers - 100% original,Free shipping,Easy returns

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
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
                        Text(
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
                    margin: EdgeInsets.all(5),
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
                        Text(
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
                    margin: EdgeInsets.all(5),
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
                        Text(
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

            Container(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx, idx) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 150,
                      width: 120,
                      color: Colors.deepPurple,
                    );
                  }),
            ),

            // All Time Favourite section
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'ALL-TIME FAVOURITES',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Row(
              children: [
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
              ],
            ),
            Row(
              children: [
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
                Expanded(child: allTimeFavouriteTile("Image Id", 'Under ₹400')),
              ],
            ),

            // view all button

            Container(
              margin: EdgeInsets.all(10),
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
            ),

            // Listview horizontal

            Container(
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
                          margin: EdgeInsets.all(2),
                          height: 20,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
            SizedBox(
              height: 15,
            ),
            // dress categories
            Container(
              height: 600,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: (items.length / 2).ceil(),
                itemBuilder: (BuildContext context, int index) {
                  List<ProductModel> filteredItems = allItems.where((item) {
                    return category[selectedIdx] == 'All' ||
                        item.category == category[selectedIdx];
                  }).toList();

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
                    return SizedBox.shrink(); // Empty widget if no more items
                  }
                },
              ),
            )
            // view more button
          ],
        ),
      ),
    );
  }
}
