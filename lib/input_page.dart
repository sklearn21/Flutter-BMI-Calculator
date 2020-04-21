import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const bottomContainerHeight = 80.00;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final Color cardcolor = Color(0xFFABCD);
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  // 1 = male, female = 2

  void updateColour(int gender) {
    //if male card is pressed
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //if female card is pressed
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                                updateColour(1);
                              });
                            },
                            child: ResuableCard(
                              colour: maleCardColor,
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
                                updateColour(2);
                              });
                            },
                            child: ResuableCard(
                              colour: femaleCardColor,
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
