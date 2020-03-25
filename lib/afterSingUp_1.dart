import 'package:finalproject/afterSingUp_2.dart';
import 'package:flutter/material.dart';
import 'contants.dart';

enum Gender {
  male,
  famele,
}

class afterSingUp_1 extends StatefulWidget {
  @override
  _afterSingUp_1State createState() => _afterSingUp_1State();
}

class _afterSingUp_1State extends State<afterSingUp_1> {
  @override
  Gender selectedGender = Gender.male;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // my_Iconbutton(),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                'Tell us about yourself!',
                style: kBigLabelTextStyle,
              ),
              SizedBox(
                height: 90,
              ),
              Column(
                children: <Widget>[
                  kchoseeButton(
                    buttonTitle: 'Male',
                    click: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    buttonColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    TextColor: selectedGender == Gender.famele
                        ? Colors.purple
                        : Colors.white,
                  ),
                  kchoseeButton(
                    buttonTitle: 'Famele',
                    click: () {
                      setState(() {
                        selectedGender = Gender.famele;
                      });
                    },
                    buttonColor: selectedGender == Gender.famele
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    TextColor: selectedGender == Gender.famele
                        ? Colors.white
                        : Colors.purple,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.20),
              WelcomePageButton(
                  buttonTitle: 'NEXT',
                  click: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => afterSingUp_2()),
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
