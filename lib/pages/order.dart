import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home.dart';
import 'package:qicpic/pages/menutab.dart';
import 'package:qicpic/widgets/dialougue_text.dart';
import 'package:qicpic/pages/product.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Navigator(
              key: _navigatorKey,
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (context) {
                    return Scaffold(
                      appBar: const PreferredSize(
                        preferredSize: Size.fromHeight(150.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40),
                            AppBarWidget(),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 10),
                              child: SubHeadingTextWidget(
                                title: "Order",
                                fontWeight: FontWeight.w600,
                                textsize: 18,
                              ),
                            ),
                            TabBar(
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 20.0),
                              isScrollable: true,
                              indicatorColor: Colors.orange,
                              indicatorWeight: 3.0,
                              indicatorPadding: EdgeInsets.only(bottom: 8),
                              labelColor: Colors.orange,
                              unselectedLabelColor:
                                  Color.fromARGB(255, 104, 74, 63),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              unselectedLabelStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                              tabs: [
                                Tab(text: 'Menu'),
                                Tab(text: 'Saved'),
                                Tab(text: 'Recent'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      body: Stack(
                        children: [
                          TabBarView(
                            children: [
                              MenuTab(navigatorKey: _navigatorKey),
                              Center(child: Text('Saved Page')),
                              Center(child: Text('Recent Page')),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              color: Colors.brown,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: kwhiteColour),
                                    width: 150,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3.0, horizontal: 6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Find Store',
                                            style: TextStyle(
                                              color: Colors.brown,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.qr_code,
                                            color: Colors.brown,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: kwhiteColour,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
