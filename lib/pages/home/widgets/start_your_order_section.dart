import 'package:flutter/material.dart';
import 'package:qicpic/pages/home/widgets/offers_and_orders_text.dart';

class StartYourOrderSection extends StatelessWidget {
  const StartYourOrderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 220,
              child: Image.asset(
                "assets/images/Slider Image (1).png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const OffersAndOrdersTextWidget(
            buttonText: "Start order",
            heading: "Start your order and enjoy your day",
          ),
        ],
      ),
    );
  }
}
