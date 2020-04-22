import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';
import 'constants.dart';

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
  int height = 180;

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ResuableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            colour: selectedGender == Gender.male
                                ? kActiveCardColor
                                : kInactiveCardColor,
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.mars,
                              label: 'MALE',
                            ),
                          ),
                        ),
                        Expanded(
                          child: ResuableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            colour: selectedGender == Gender.female
                                ? kActiveCardColor
                                : kInactiveCardColor,
                            cardChild: IconContent(
                              icon: FontAwesomeIcons.venus,
                              label: 'FEMALE',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(height.toString(), style: kNumberTextStyle),
                              Text(
                                'cm',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Color(0xFF8D8E98),
                                thumbColor: Color(0xFFEB1555),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayColor: Color(0x29EB1555),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 30)),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ResuableCard(colour: kActiveCardColor),
                        ),
                        Expanded(
                          child: ResuableCard(colour: kActiveCardColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: kBottomContainerColor,
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    height: kBottomContainerHeight,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
