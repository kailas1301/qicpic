import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home.dart';

class ProductPage extends StatelessWidget {
  final String product;

  const ProductPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            AppBarWidget(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Croissant (10).png', // Replace with the actual image URL
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
            kSizedBoxH40,
            const Text(
              'Size',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kblackColour,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color.fromRGBO(121, 85, 72, 1),
              height: 2,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: IconButton(
                    iconSize: 50,
                    icon: Image.asset('assets/images/Group 1237.png'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    iconSize: 60,
                    icon: Image.asset('assets/images/Group 1236.png'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    iconSize: 70,
                    icon: Image.asset('assets/images/Group 1235.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'What\'s included',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kblackColour,
              ),
            ),
            const Divider(color: Colors.brown),
            const SizedBox(height: 16),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Milk'),
                      Text('2% dairy milk'),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Espresso Shots'),
                      Row(
                        children: [
                          Icon(Icons.remove_circle_outline),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text('1'),
                          ),
                          Icon(Icons.add_circle_outline),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Toppings'),
                      Text('Cinnamon'),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: const Text('Customize'),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '4\$',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    child: Text('Add to order'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
