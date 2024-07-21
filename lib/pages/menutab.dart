import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/product.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class MenuTab extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MenuTab({super.key, required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeadingTextWidget(
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
            Divider(color: Colors.brown, thickness: 2),
            kSizedBoxH10,
            SubHeadingTextWidget(
              title: 'Snacks',
              textsize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10),
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
              title: 'Croissant',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
            MenuItem(
              imagePath: 'assets/images/Croissant (3).png',
              title: 'Croissant',
              description: 'Lorem Ipsum is simply dummy text',
              navigatorKey: navigatorKey,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.navigatorKey,
  });

  final String imagePath;
  final String title;
  final String description;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigatorKey.currentState?.push(
          MaterialPageRoute(
            builder: (context) => ProductPage(product: title),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubHeadingTextWidget(
                  title: title,
                  textsize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SubHeadingTextWidget(
                  title: description,
                  textsize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
