import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home/widgets/dotted_line.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class RecentOrderItemsCard extends StatelessWidget {
  const RecentOrderItemsCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });
  final String name;
  final String price;
  final String image;
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
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SubHeadingTextWidget(
                            textsize: 12,
                            fontWeight: FontWeight.w600,
                            textColor: kblackColour,
                            title: name),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 2,
                          child: CustomPaint(
                            painter: DottedLinePainter(),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SubHeadingTextWidget(
                            fontWeight: FontWeight.w600,
                            textsize: 12,
                            textColor: kblackColour,
                            title: "$price \$",
                          )),
                    ],
                  ),
                  kSizedBoxH10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubHeadingTextWidget(
                              textsize: 11,
                              textColor: kDarkGreyColour,
                              title: "Lorem Ipsum is simply dummy"),
                          SubHeadingTextWidget(
                              textsize: 11,
                              textColor: kDarkGreyColour,
                              title: "Text"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 5),
                          decoration: BoxDecoration(
                            color: kAppButtonColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const SubHeadingTextWidget(
                            title: "Order Again",
                            textColor: kwhiteColour,
                            fontWeight: FontWeight.w600,
                            textsize: 11,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
