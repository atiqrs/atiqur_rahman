import 'package:flutter/material.dart';

import '../widget/nav_button.dart';
import 'cart_page.dart';
import 'landing_home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double notchMarginVal = 8;
  static const homeIndex = 0;
  static const cartIndex = 1;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title:
      //   // implement navigation drawer
      // ),

      body: IndexedStack(
        index: _currentIndex,
        children: const [LandingHomePage(), CartPage()],
      ),
      floatingActionButton: SizedBox(
        height: height * 0.22,
        width: width * 0.22,
        child: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB Pressed!');
          },
          tooltip: 'Voice',
          backgroundColor: Colors.amberAccent,
          // shape: ShapeBorder.lerp(10),
          child: const Icon(Icons.mic),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: notchMarginVal,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: height * .12,
          width: double.infinity,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              MyNavButton(
                  thisIndex: homeIndex,
                  currentIndex: _currentIndex,
                  onTapFunc: () {
                    setState(() {
                      _currentIndex = homeIndex;
                      debugPrint('$_currentIndex');
                    });
                  },
                  icon: const Icon(Icons.home),
                  selectedIcon: const Icon(Icons.home, color: Colors.blue)),
              MyNavButton(
                  thisIndex: cartIndex,
                  currentIndex: _currentIndex,
                  onTapFunc: () {
                    setState(() {
                      _currentIndex = cartIndex;
                      debugPrint('$_currentIndex');
                    });
                  },
                  icon: const Icon(Icons.shopping_cart_outlined),
                  selectedIcon: const Icon(Icons.shopping_cart_rounded, color: Colors.blue))
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
