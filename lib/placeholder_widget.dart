import 'package:flutter/material.dart';

class placeholder_widget extends StatelessWidget{
  final Color color;
  placeholder_widget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
