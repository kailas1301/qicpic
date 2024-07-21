import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class OffersAndOrdersTextWidget extends StatelessWidget {
  const OffersAndOrdersTextWidget({
    super.key,
    required this.heading,
    required this.buttonText,
  });
  final String heading;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeadingTextWidget(
              title: heading,
              fontWeight: FontWeight.w600,
              textsize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SubHeadingTextWidget(
              title:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor.",
              fontWeight: FontWeight.w400,
              textsize: 13,
              textColor: kDarkGreyColour,
            ),
            kSizedBoxH10,
            GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                decoration: BoxDecoration(
                  color: kAppButtonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SubHeadingTextWidget(
                  title: buttonText,
                  textColor: kwhiteColour,
                  fontWeight: FontWeight.w600,
                  textsize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
