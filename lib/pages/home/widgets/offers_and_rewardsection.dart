import 'package:flutter/material.dart';
import 'package:qicpic/pages/home/widgets/offers_and_orders_text.dart';

class OffersAndRewardsSection extends StatelessWidget {
  const OffersAndRewardsSection({
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
          const OffersAndOrdersTextWidget(
            buttonText: "View offers",
            heading: "Offers and Rewards",
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: Image.asset(
                "assets/images/Slider Image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
