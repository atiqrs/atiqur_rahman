import 'package:flutter/material.dart';

class PopulerCategoryCard extends StatelessWidget {
  final String image;
  final double circularBorderRadiusValOfPopulerConteiner;
  final String productName;
  const PopulerCategoryCard({
    Key? key,
    required this.image,
    required this.circularBorderRadiusValOfPopulerConteiner,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Container(
      height: 210,
      width: 300,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                      
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
            height: 210,
            width: 300,
          ),
          Positioned(
            top: 105,
            left: 50,
            child: Text(productName, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
