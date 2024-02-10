import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepeatedButtons extends StatelessWidget {
  final Icon myIcon;
  const RepeatedButtons({
    super.key,
    required this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF4C4F5E),
        borderRadius: BorderRadius.circular(50),
      ),
      alignment: Alignment.center,
      child: myIcon,
    );
  }
}