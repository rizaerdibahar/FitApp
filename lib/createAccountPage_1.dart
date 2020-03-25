import 'package:finalproject/contants.dart';
import 'package:flutter/material.dart';
import 'Login_Page.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: AssetImage('images/createAccount_1.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  width: 600,
                  height: 600,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Create your free account",
                          style: kLabelTextStyle,
                        ),
                        TextField_CreateAccount(
                          textSEE: false,
                          fildText: 'Enter full name',
                          TextFieldColor: Colors.white,
                          marginTop: 80,
                        ),
                        TextField_CreateAccount(
                          fildText: 'Enter E-mail',
                          textSEE: false,
                          TextFieldColor: Colors.white,
                          marginTop: 20,
                        ),
                        TextField_CreateAccount(
                          fildText: 'Password',
                          TextFieldColor: Colors.white,
                          marginTop: 20,
                          textSEE: true,
                        ),
                        TextField_CreateAccount(
                          fildText: 'Re-password',
                          TextFieldColor: Colors.white,
                          marginTop: 20,
                          textSEE: true,
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        WelcomePageButton(
                            buttonTitle: 'SIGN UP',
                            click: null,
                            buttonColor: Color(0XFF2884DA)),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Already have an account ? ",
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login_Page()),
                            );
                          },
                          child: Text(
                            "Log in",
                            style: kLabelTextStyle,
                          ),
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
