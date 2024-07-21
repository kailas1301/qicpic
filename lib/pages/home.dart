import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
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
                    name: "Croissant",
                    price: "5",
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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 25,
                width: 91,
                child: Image.asset(
                  "assets/images/Logo Loader.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/images/icon _language_.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/Group 1217.png'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 1.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 226, 226),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0,
              ),
            ],
          ),
        )
      ],
    );
  }
}

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
          Image.asset(
            "assets/images/Slider Image.png",
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

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
          Image.asset(
            "assets/images/Slider Image (1).png",
            fit: BoxFit.fitHeight,
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

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 170, 169, 169)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;
    double dotSpacing = 1;
    double dotRadius = 1;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawCircle(Offset(startX, size.height / 2), dotRadius, paint);
      startX += 2 * dotRadius + dotSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
