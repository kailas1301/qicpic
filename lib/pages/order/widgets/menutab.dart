import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/order/widgets/menu_item.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class MenuTab extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MenuTab({super.key, required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SubHeadingTextWidget(
              title: 'Drinks',
              textsize: 18,
              fontWeight: FontWeight.w600,
            ),
            kSizedBoxH10,
            MenuItem(
              imagePath: 'assets/images/Croissant (4).png',
              title: 'Espresso',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            MenuItem(
              imagePath: 'assets/images/Croissant (6).png',
              title: 'Cappuccino',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            const Divider(
              color: Color.fromRGBO(121, 85, 72, 1),
              height: 2,
            ),
            kSizedBoxH10,
            const SubHeadingTextWidget(
              title: 'Snacks',
              textsize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 10),
            MenuItem(
              imagePath: 'assets/images/Croissant (7).png',
              title: 'Cinnamon bun',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            MenuItem(
              imagePath: 'assets/images/Croissant (8).png',
              title: 'Croissant',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            MenuItem(
              imagePath: 'assets/images/Croissant (9).png',
              title: 'Bacon, Sausagae & Egg Wrap',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            MenuItem(
              imagePath: 'assets/images/Croissant (3).png',
              title: 'Signature hamburger with cheese',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
          ],
        ),
      ),
    );
  }
}
