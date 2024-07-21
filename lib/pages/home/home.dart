import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home/widgets/appbar.dart';
import 'package:qicpic/pages/home/widgets/offers_and_rewardsection.dart';
import 'package:qicpic/pages/home/widgets/recentorder_part.dart';
import 'package:qicpic/pages/home/widgets/start_your_order_section.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kwhiteColour,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSizedBoxH30,
                kSizedBoxH10,
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SubHeadingTextWidget(
                    title: "Hello, Amin",
                    fontWeight: FontWeight.w700,
                    textsize: 28,
                  ),
                ),
                kSizedBoxH10,
                AppBarWidget(),
                kSizedBoxH10,
              ],
            ),
            // offers and rewards
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  OffersAndRewardsSection(),
                  kSizedBoxH15,
                  // Ṣtart your order
                  StartYourOrderSection(),
                  kSizedBoxH15,
                  // recent order
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: SubHeadingTextWidget(
                      title: "Recent Order",
                      fontWeight: FontWeight.w600,
                      textsize: 18,
                    ),
                  ),
                  kSizedBoxH10,
                  RecentOrderItemsCard(
                    image: "assets/images/Croissant.png",
                    name: "Croissant",
                    price: "5",
                  ),
                  kSizedBoxH10,
                  RecentOrderItemsCard(
                    image: "assets/images/Croissant (1).png",
                    name: "Cinnamon Bun",
                    price: "6",
                  ),
                  kSizedBoxH10,
                  RecentOrderItemsCard(
                    image: "assets/images/Croissant.png",
                    name: "Croissant",
                    price: "5",
                  ),
                  kSizedBoxH10,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
