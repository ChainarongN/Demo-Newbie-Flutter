import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.blue;

  SizedBox mySizedBox() => SizedBox(width: 8.0,height: 20.0,);

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  Container showLogo() {
    return Container(
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  MyStyle();
}
