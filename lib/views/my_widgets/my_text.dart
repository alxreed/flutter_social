import 'package:flutter/material.dart';

class MyText extends Text {

  MyText(data, {
    TextAlign alignment: TextAlign.center,
    double fontSize: 17.0,
    FontStyle style: FontStyle.normal,
    color: Colors.white
  }): super (
    data,
    textAlign: alignment,
    style: TextStyle(
      fontStyle: style,
      fontSize: fontSize,
      color: color
    )
  );
}