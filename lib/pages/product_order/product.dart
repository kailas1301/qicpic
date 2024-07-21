import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home/widgets/appbar.dart';
import 'package:qicpic/pages/product_order/widgets/milk_dropdown.dart';
import 'package:qicpic/pages/product_order/widgets/shots_number_calculation.dart';
import 'package:qicpic/pages/product_order/widgets/toppings_dropdown.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
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
                        Text(
                          product,
                          style: const TextStyle(
                            fontSize: 18,
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
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: kblackColour,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    color: kAppColor,
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
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: kblackColour,
                    ),
                  ),
                  const Divider(
                    color: kAppColor,
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        MilkDropdown(),
                        kSizedBoxH10,
                        EspressoShotsCounter(),
                        kSizedBoxH10,
                        ToppingsDropdown()
                      ],
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: kAppColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/images/🦆 icon _magic wand_.png",
                                width: 24,
                                height: 24,
                              ),
                            ),
                            const SubHeadingTextWidget(
                              title: "Customize",
                              textColor: kwhiteColour,
                              fontWeight: FontWeight.w600,
                              textsize: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            color: kAppButtonColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SubHeadingTextWidget(
                                  title: "Add to order",
                                  textColor: kwhiteColour,
                                  fontWeight: FontWeight.w600,
                                  textsize: 15,
                                ),
                                const SubHeadingTextWidget(
                                  title: "4\$",
                                  textColor: kwhiteColour,
                                  fontWeight: FontWeight.w600,
                                  textsize: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kSizedBoxH40,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kwhiteColour,
                    ),
                    width: 150,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find Store',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.brown,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.shopping_bag_outlined,
                    color: kwhiteColour,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
