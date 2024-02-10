// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/pages/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/calculator_brain.dart';
import 'package:flutter_bmi_calculator/widgets/re_useable_card.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/widgets/icon_content.dart';
import 'package:flutter_bmi_calculator/widgets/repeated_buttons.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  int _height = 150;
  int _weight = 73;
  int _age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('BMI CALCULATOR'),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                            print(selectedGender);
                          });
                        },
                        child: ReuseableCard(
                          myColor: selectedGender == Gender.male
                              ? activeCardColor
                              : inActiveCardColor,
                          cardChild: IconContent(
                            text: 'MALE',
                            myIcon: FontAwesomeIcons.mars,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                            print(selectedGender);
                          });
                        },
                        child: ReuseableCard(
                          myColor: selectedGender == Gender.female
                              ? activeCardColor
                              : inActiveCardColor,
                          cardChild: IconContent(
                            text: 'FEMALE',
                            myIcon: FontAwesomeIcons.venus,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  myColor: inActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Container(
                            child: Text(
                              _height.toString(),
                              style: numberTextStyle,
                            ),
                          ),
                          Container(
                            child: Text(
                              'cm',
                              style: labelTextStyle,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 2,
                            activeTrackColor: Colors.white,
                            thumbColor: activeCardColor,
                            overlayColor: Color(0x15eb1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30),
                          ),
                          child: Slider(
                            min: 40,
                            max: 280,
                            value: _height.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                _height = newValue.toDouble().round();
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: ReuseableCard(
                      myColor: inActiveCardColor,
                      cardChild: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: labelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                    child: Text(_weight.toString(),
                                        style: numberTextStyle)),
                                Container(
                                  child: Text('kg', style: labelTextStyle),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  child: RepeatedButtons(
                                      myIcon: Icon(
                                    FontAwesomeIcons.plus,
                                  )),
                                ),
                                SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _weight--;
                                    });
                                  },
                                  child: RepeatedButtons(
                                      myIcon: Icon(
                                    FontAwesomeIcons.minus,
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: ReuseableCard(
                      myColor: inActiveCardColor,
                      cardChild: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: labelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                    child: Text(_age.toString(),
                                        style: numberTextStyle)),
                                Container(
                                  child: Text('Y/O', style: labelTextStyle),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _age++;
                                      });
                                    },
                                    child: RepeatedButtons(
                                        myIcon: Icon(
                                      FontAwesomeIcons.plus,
                                    ))),
                                SizedBox(width: 10),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _age--;
                                      });
                                    },
                                    child: RepeatedButtons(
                                        myIcon: Icon(FontAwesomeIcons.minus))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height: _height, weight: _weight);
                  final bmi = calc.getCalculatedBMI();
                  final resultText = calc.getResultText();
                  final resultDetails = calc.getResultDetails();

                  print(bmi);

                  print(resultText);

                  print(resultDetails);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                              resultText: resultText,
                              bmiCalculatedResult: bmi,
                              resultDetail: resultDetails)));
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: const Color(0xFFEB1455),
                  margin: EdgeInsets.only(top: 10),
                  child: const Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
