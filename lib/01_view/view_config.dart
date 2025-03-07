import 'package:flutter/material.dart';

class ViewConfig {
  static const fontSize = 18.0;
  static const fontSizeBig = 30.0;
  static const String warning = "Aviso!";
  static const String confirm = "Aceitar";

  static Color primaryColor = Colors.blue[900]!;
  static Color secondaryColor = Colors.blue;
  static Color thirdColor = Colors.white;

  static TextStyle textStyle = TextStyle(
    color: thirdColor,
    fontSize: fontSize,
  );

  static TextStyle textStyleBig = TextStyle(
    color: thirdColor,
    fontSize: fontSizeBig,
  );
}
