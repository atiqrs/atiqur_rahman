import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: const [
        Divider(
          color: Colors.black,
          height: 2,
          thickness: 2,
          indent: 0,
          endIndent: 5,
        ),
        Divider(
          color: Colors.black,
          thickness: 2,
          indent: 8,
          endIndent: 5,
        )
      ],
    );
  }
}
