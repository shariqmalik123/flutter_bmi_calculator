import 'package:flutter/material.dart';

import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/widgets/re_useable_card.dart';


class ResultPage extends StatelessWidget {
  final String? resultText; //underweight
  final String? bmiCalculatedResult; //22
  final String? resultDetail; //'You are underweight'

  const ResultPage(
      {super.key,
      required this.resultText,
      required this.bmiCalculatedResult,
      required this.resultDetail});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
                child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                myColor: inActiveCardColor,
                cardChild: Column(
                  children: [
                    Text(resultText!),
                    Text(bmiCalculatedResult!),
                    Text(resultDetail!)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

