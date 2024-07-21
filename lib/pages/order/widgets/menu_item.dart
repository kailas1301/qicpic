import 'package:flutter/material.dart';
import 'package:qicpic/pages/product_order/product.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

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
