import 'package:flutter/material.dart';

class MyNavButton extends StatefulWidget {
  final int currentIndex;
  final int thisIndex;
  final VoidCallback onTapFunc;
  final Icon icon;
  final Icon selectedIcon;

  const MyNavButton(
      {Key? key,
      required this.thisIndex,
      required this.currentIndex,
      required this.onTapFunc,
      required this.icon,
      required this.selectedIcon})
      : super(key: key);

  @override
  State<MyNavButton> createState() => _MyNavButtonState();
}

class _MyNavButtonState extends State<MyNavButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTapFunc,
        child: widget.currentIndex == widget.thisIndex ? widget.selectedIcon : widget.icon,
      ),
    );
  }
}
