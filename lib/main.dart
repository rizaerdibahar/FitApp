import 'package:ilkflutterapp/change_email.dart';

import 'change_password.dart';
import 'package:flutter/material.dart';
import 's_change_password.dart';
import 's_change_email.dart';
import 'start.dart';
import 'package:ilkflutterapp/placeholder_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: start(),
      routes: {
        '/s_change_password': (context) => start(),
      },
    );
  }
}


