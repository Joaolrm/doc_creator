import 'package:flutter/material.dart';

class ViewConfig {
  static const fontSize = 18.0;
  static const fontSizeBig = 30.0;
  static const String warning = "Aviso!";
  static const String confirm = "Aceitar";

  static Color primaryColor = const Color.fromARGB(255, 98, 0, 238);
  static Color secondaryColor = const Color.fromARGB(255, 3, 218, 197);
  static Color thirdColor = const Color.fromARGB(255, 255, 255, 255);

  static TextStyle textStyle = TextStyle(
    color: thirdColor,
    fontSize: fontSize,
  );

  static TextStyle textStyleBig = TextStyle(
    color: thirdColor,
    fontSize: fontSizeBig,
  );
}
