import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/data/insider_promotional_list.dart';
import 'package:myntra_clone_ui/widgets/benefits_tile.dart';
import 'package:myntra_clone_ui/widgets/insiders_criteria_tile.dart';
import 'package:myntra_clone_ui/widgets/insiders_reward_tile.dart';

class InsidersProgram extends StatelessWidget {
  const InsidersProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1C20),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/insiders/main.jpg'),
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
              padding: EdgeInsets.all(8.0),
              child: Text(
                'New Goal Criteria',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            criteriaTile('₹0', "You've Spent", '₹7000'),
            criteriaTile('0/5', 'Your Orders', '5'),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Note: Recent purchase will only reflect in the goal once the return window is over',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Benefits of Joining The Program',
                style: TextStyle(
                  color: Colors.amber.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            benefitTile(
              'assets/insiders/early-access.png',
              'Early Access to the Sales',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.white,
              ),
            ),
            benefitTile(
              'assets/insiders/benifits.png',
              'Insiders Exclusive Rewards & Benefits',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.white,
              ),
            ),
            benefitTile(
              'assets/insiders/support.png',
              'priority Customer Support',
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'How does it work',
                style: TextStyle(
                  color: Colors.amber.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Earn Supercoins with every Purchase. \nYou can get upto 3 supercoins for every ₹100 spent',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF2E3042),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color(0xFF2E3042),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Image.asset('assets/insiders/work.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff3e4152),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/insiders/up.png',
                          height: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Shop on Myntra to upgrade your tier',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Rewards',
                style: TextStyle(
                  color: Colors.amber.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                bottom: 12.0,
              ),
              child: Text(
                'Use Your Supercoins to get exciting rewards',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                ),
              ),
            ),
            SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: insiderPromotionalList.length,
                itemBuilder: (ctx, idx) {
                  return insidersPromotionalTile(
                    insiderPromotionalList[idx].imageId,
                    insiderPromotionalList[idx].title,
                  );
                },
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 132,
                // color: Colors.deepPurple,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/insiders/myntra.png',
                      fit: BoxFit.cover,
                      height: 22,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/insiders/insider.png',
                      fit: BoxFit.cover,
                      height: 18,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                'Fashion Advice | VIP Access | Extra Savings',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: Color(0xff282c3f),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
              ),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffff3f6c),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'By enrolling you agree to',
                style: TextStyle(
                  color: Color(0xFF9fa1a7),
                ),
              ),
            ),
            Text(
              'Insider Terms & Conditions',
              style: TextStyle(
                color: Color(0xffff3f6c),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
