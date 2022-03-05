import 'package:flutter/material.dart';

class DailyDealCart extends StatelessWidget {
  final Image image ;
  final double circularBorderRadiusValOfMainConteiner;
  final String productName;
  final String newPrice;
  final String oldPrice;

  final bool upIndexValue;
  final String rateValue;
  const DailyDealCart(
      {Key? key,
      required this.image,
      required this.circularBorderRadiusValOfMainConteiner,
      required this.productName,
      required this.newPrice,
      required this.oldPrice,
      required this.upIndexValue,
      required this.rateValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return Container(
      height: 300,
      width: 260,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Image.asset(
                    //   image,
                    //   height: 180,
                    //   width: 200,
                    // ),
                    image,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        child: Container(
                            height: 70,
                            width: double.infinity,
                            color: Colors.white.withOpacity(0.9),
                            alignment: Alignment.center,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    debugPrint('Add to cart pressed');
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 130,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(circularBorderRadiusValOfMainConteiner)),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                                      Icon(Icons.shopping_cart_rounded, color: Colors.blue),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    debugPrint('Add to cart pressed');
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color:Colors.red.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(circularBorderRadiusValOfMainConteiner)),
                                    child: const Icon(Icons.favorite_border_outlined, color: Colors.red),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 20,
                    left: 0,
                    child: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(10),
                        ),
                        color: upIndexValue ?  Colors.green:Colors.red,
                      ),
                      child: Center(
                          child: Text(rateValue, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
                    )),
              ],
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    productName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width * 0.045,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text.rich(Text(data),TextSpan(children: [Text('sd'),], ))
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$newPrice ',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\$$oldPrice ',
                          style: TextStyle(
                              fontSize: width * 0.035,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
