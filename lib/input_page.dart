import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const bottomContainerHeight = 80.00;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            child: ResuableCard(
                              colour: selectedGender == Gender.male
                                  ? activeCardColor
                                  : inactiveCardColor,
                              cardChild: IconContent(
                                icon: FontAwesomeIcons.mars,
                                label: 'MALE',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            child: ResuableCard(
                              colour: selectedGender == Gender.female
                                  ? activeCardColor
                                  : inactiveCardColor,
                              cardChild: IconContent(
                                icon: FontAwesomeIcons.venus,
                                label: 'FEMALE',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ResuableCard(colour: activeCardColor),
                        ),
                        Expanded(
                          child: ResuableCard(colour: activeCardColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: bottomContainerColor,
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    height: bottomContainerHeight,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
