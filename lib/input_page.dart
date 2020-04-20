import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.00;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final Color cardcolor = Color(0xFFABCD);

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
                          child: ResuableCard(
                              cardChild: IconContent(
                                icon: FontAwesomeIcons.mars,
                                label: 'MALE',
                              ),
                              colour: activeCardColor),
                        ),
                        Expanded(
                          child: ResuableCard(
                              cardChild: IconContent(
                                icon: FontAwesomeIcons.venus,
                                label: 'FEMALE',
                              ),
                              colour: activeCardColor),
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

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
