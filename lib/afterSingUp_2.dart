import 'package:finalproject/afterSingUp_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'afterSingUp_3.dart';
import 'contants.dart';

class afterSingUp_2 extends StatefulWidget {
  @override
  _afterSingUp_2State createState() => _afterSingUp_2State();
}

class _afterSingUp_2State extends State<afterSingUp_2> {
  @override
  Widget build(BuildContext context) {
    DateTime _dateTime = DateTime.now();
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  my_Iconbutton(
                    click: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => afterSingUp_1()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'What is your brithdate ? ',
                style: kBigLabelTextStyle,
              ),
              SizedBox(
                height: 90,
              ),
              Column(children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: CupertinoDatePicker(
                    minimumYear: 1940,
                    maximumYear: 2020,
                    mode: CupertinoDatePickerMode.date,
                    backgroundColor: Color(0XFFE5E5E5),
                    onDateTimeChanged: (dateTime) {
                      setState(() {
                        dateTime = _dateTime;
                      });
                    },
                    initialDateTime: _dateTime,
                  ),
                ),
              ]),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              WelcomePageButton(
                  buttonTitle: 'NEXT',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => afterSingUp_3()),
                    );
                  },
                  buttonColor: kActiveCardColor)
            ],
          ),
        ),
      ),
    );
  }
}

enum DatePickerDateOrder {
  /// Order of the columns, from left to right: day, month, year.
  ///
  /// Example: 12 | March | 1996
  dmy,

  /// Order of the columns, from left to right: month, day, year.
  ///
  /// Example: March | 12 | 1996
  mdy,

  /// Order of the columns, from left to right: year, month, day.
  ///
  /// Example: 1996 | March | 12
  ymd,

  /// Order of the columns, from left to right: year, day, month.
  ///
  /// Example: 1996 | 12 | March
  ydm,
}
