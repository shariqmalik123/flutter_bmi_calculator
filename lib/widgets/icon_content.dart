import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class IconContent extends StatelessWidget {
  final String? text;
  final IconData? myIcon;
  const IconContent({
    super.key, this.text, this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          myIcon,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text!,
          style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 213, 212, 212)),
        )
      ],
    );
  }
}
