import 'package:finalproject/afrerSingUp_4.dart';
import 'package:flutter/material.dart';
import 'contants.dart';
import 'afterSingUp_2.dart';

class afterSingUp_3 extends StatefulWidget {
  @override
  _afterSingUp_3State createState() => _afterSingUp_3State();
}

enum DistanceType {
  cm,
  fit,
}
DistanceType selectedDistance = DistanceType.cm;
String str = 'Cm';

class _afterSingUp_3State extends State<afterSingUp_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                SafeArea(
                  child: my_Iconbutton(
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_2()),
                      );
                    },
                  ),
                ),
              ],
            )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Text(
                      'Tell us about yourself!',
                      style: kBigLabelTextStyle,
                    ),
                  ],
                )),
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        onPressed: () {
                          setState(() {
                            selectedDistance = DistanceType.cm;
                            str = 'Cm';
                          });
                        },
                        child: Text(
                          'Cm',
                          style: TextStyle(
                            color: selectedDistance == DistanceType.cm
                                ? Colors.white
                                : Colors.purple,
                          ),
                        ),
                        color: selectedDistance == DistanceType.cm
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      new RaisedButton(
                        onPressed: () {
                          setState(() {
                            selectedDistance = DistanceType.fit;
                            str = 'Fit';
                          });
                        },
                        child: Text(
                          'Fit',
                          style: TextStyle(
                            color: selectedDistance == DistanceType.fit
                                ? Colors.white
                                : Colors.purple,
                          ),
                        ),
                        color: selectedDistance == DistanceType.fit
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        height: 30,
                        width: 100,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$str',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Rajdhani",
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: <Widget>[
                WelcomePageButton(
                    buttonTitle: 'Next',
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_4()),
                      );
                    },
                    buttonColor: kActiveCardColor)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
