import 'package:flutter/material.dart';

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
  String helloIcon = 'assets/icon/hand.png';

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
    return Container(
      // margin: EdgeInsets.all(marginValOfMainConteiner),
      // padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(circularBorderRadiusValOfMainConteiner)),
      color: Colors.grey[100],

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.05, width * 0.05, height * 0.05),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/icon/hand.png',
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
          Padding(
              padding: EdgeInsets.fromLTRB(width * 0.05, height * 0.01, width * 0.05, height * 0.01),
              child: Container(
                color: Colors.grey[200],
                child: TextField(),
              )),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'Demo Text',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
