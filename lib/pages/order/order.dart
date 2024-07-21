import 'package:flutter/material.dart';
import 'package:qicpic/constants/constants.dart';
import 'package:qicpic/pages/home/widgets/appbar.dart';
import 'package:qicpic/pages/order/widgets/custom_tab.dart';
import 'package:qicpic/pages/order/widgets/menutab.dart';
import 'package:qicpic/widgets/dialougue_text.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _selectedIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                        preferredSize: Size.fromHeight(110.0),
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
                          ],
                        ),
                      ),
                      body: Column(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: () => _onTabTapped(0),
                                    child: CustomTab(
                                      text: 'Menu',
                                      isSelected: _selectedIndex == 0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => _onTabTapped(1),
                                    child: CustomTab(
                                      text: 'Saved',
                                      isSelected: _selectedIndex == 1,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => _onTabTapped(2),
                                    child: CustomTab(
                                      text: 'Recent',
                                      isSelected: _selectedIndex == 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                IndexedStack(
                                  index: _selectedIndex,
                                  children: [
                                    MenuTab(navigatorKey: _navigatorKey),
                                    const Center(child: Text('Saved Page')),
                                    const Center(child: Text('Recent Page')),
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
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: kwhiteColour,
                                          ),
                                          width: 150,
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 3.0, horizontal: 6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Find Store',
                                                  style: TextStyle(
                                                    color: Colors.brown,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .qr_code_scanner_outlined,
                                                  color: Colors.brown,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.shopping_bag_outlined,
                                          color: kwhiteColour,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
