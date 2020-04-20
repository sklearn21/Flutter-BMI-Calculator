import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                          child: ResuableCard(colour: activeCardColor),
                        ),
                        Expanded(
                          child: ResuableCard(colour: activeCardColor),
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

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
