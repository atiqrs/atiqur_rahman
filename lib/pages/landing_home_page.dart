import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import '../widget/daily_deal_card.dart';
import '../widget/drawer.dart';

class LandingHomePage extends StatefulWidget {
  const LandingHomePage({Key? key}) : super(key: key);

  @override
  State<LandingHomePage> createState() => _LandingHomePageState();
}

class _LandingHomePageState extends State<LandingHomePage> {
  final double marginValOfMainConteiner = 8.0;
  final double circularBorderRadiusValOfMainConteiner = 15.0;
  final String username = 'Nicholas';
  static const String helloIconPath = 'assets/icon/hand.png';

  String productName = 'OnePlus 7T Dual Sim 8GB RAM 128GB LTE Frosted Silver';
  double newPrice = 935.00;
  double oldPrice = 1020.00;

  String getGreetings() {
    int hours = DateTime.now().hour;

    if (hours < 12) {
      return "Good Morning";
    } else if (hours >= 12 && hours <= 17) {
      return "Good Afternoon";
    } else if (hours >= 17 && hours <= 24) {
      return "Good Night";
    }
    return "Good Day";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Header
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.05, width * 0.05, height * 0.04),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Image.asset(
                  helloIconPath,
                  height: width * 0.12,
                  width: width * 0.12,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getGreetings(),
                      style: TextStyle(fontSize: width * 0.04, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      username,
                      style: TextStyle(fontSize: width * 0.05, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                // your icon have to import here, for now i just use a normal icon for Drawer
                IconButton(
                    onPressed: () {
                      debugPrint('Drawer Pressed');
                    },
                    icon: const DrawerIcon())
              ],
            ),
          ),
          // Search
          Padding(
              padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.01, width * 0.05, height * 0.01),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search_sharp,
                    color: Colors.grey,
                  ),
                  hintText: "Search product you wish...",
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide.none),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              )),

          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.04, width * 0.05, height * 0.02),
            child: Row(children: [
              Text(
                'Daily Deals',
                style: TextStyle(fontSize: width * 0.05, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Divider(
                thickness: 3,
                height: 3,
                color: Colors.black,
              )
            ]),
          ),

          // card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20,),
                DailyDealCart(
                  circularBorderRadiusValOfMainConteiner: circularBorderRadiusValOfMainConteiner,
                  image: Image.asset(
                    'assets/product.jpeg',
                    height: 180,
                    width: 200,
                  ),
                  newPrice: '937.00',
                  oldPrice: '1010.00',
                  productName: productName,
                  rateValue: '-15%',
                  upIndexValue: false,
                ),
                DailyDealCart(
                  circularBorderRadiusValOfMainConteiner: circularBorderRadiusValOfMainConteiner,
                  image: Image.asset(
                    'assets/product.jpeg',
                    height: 180,
                    width: 200,
                  ),
                  newPrice: '237.00',
                  oldPrice: '510.00',
                  productName: 'Samsung 3I 8GB RAM 128GB LTE Silver',
                  rateValue: 'Top',
                  upIndexValue: true,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
