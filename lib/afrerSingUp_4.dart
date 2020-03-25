import 'package:finalproject/contants.dart';
import 'package:flutter/material.dart';

import 'afterSingUp_3.dart';
import 'afterSingUp_5.dart';

class afterSingUp_4 extends StatefulWidget {
  @override
  _afterSingUp_4State createState() => _afterSingUp_4State();
}

enum WeightType {
  Kg,
  Ibm,
}
WeightType selectedWeight = WeightType.Kg;
String strWeight = 'Kg';

class _afterSingUp_4State extends State<afterSingUp_4> {
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
                            builder: (context) => afterSingUp_3()),
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
                            selectedWeight = WeightType.Kg;
                            strWeight = 'Kg';
                          });
                        },
                        child: Text(
                          'KG',
                          style: TextStyle(
                            color: selectedWeight == WeightType.Kg
                                ? Colors.white
                                : Colors.purple,
                          ),
                        ),
                        color: selectedWeight == WeightType.Kg
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
                            selectedWeight = WeightType.Ibm;
                            strWeight = 'IBM';
                          });
                        },
                        child: Text(
                          'IBM',
                          style: TextStyle(
                            color: selectedWeight == WeightType.Ibm
                                ? Colors.white
                                : Colors.purple,
                          ),
                        ),
                        color: selectedWeight == WeightType.Ibm
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
                        '$strWeight',
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
                            builder: (context) => afterSingUp_5()),
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
