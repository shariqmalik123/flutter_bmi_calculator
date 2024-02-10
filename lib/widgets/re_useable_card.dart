import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color? myColor;
  final Widget? cardChild;

  const ReuseableCard({
    super.key,
    required this.myColor,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
