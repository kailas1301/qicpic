import 'package:flutter/material.dart';

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
