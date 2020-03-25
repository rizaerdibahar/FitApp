import 'package:finalproject/WelcomePage.dart';
import 'package:finalproject/afterSingUp_1.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'contants.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  bool checkBoxState = false;
  void someting() {
    setState(() {
      if (checkBoxState) {
        checkBoxState = !checkBoxState;
      } else {
        checkBoxState = !checkBoxState;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: AssetImage('images/Login_back.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  width: 600,
                  height: 400,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Color.fromARGB(7, 70, 70, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Log In",
                          style: kLabelTextStyle,
                        ),
                        TextField_CreateAccount(
                          fildText: ' E-mail',
                          textSEE: false,
                          TextFieldColor: Colors.white,
                          marginTop: 60,
                        ),
                        TextField_CreateAccount(
                          fildText: 'Password',
                          TextFieldColor: Colors.white,
                          marginTop: 20,
                          textSEE: true,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new ButtonBar(
                              children: <Widget>[
                                new Checkbox(
                                  value: checkBoxState,
                                  onChanged: (bool e) => someting(),
                                ),
                              ],
                            ),
                            SizedBox(),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Rajdhani',
                                fontSize: 20.0,
                              ),
                            )
                          ],
                        ),
                        WelcomePageButton(
                          buttonTitle: "Log in",
                          click: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => afterSingUp_1()),
                            );
                          },
                          buttonColor: Color(0XFF2884DA),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
