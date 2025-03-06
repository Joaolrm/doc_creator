import 'package:doc_creator/01_view/view_config.dart';
import 'package:flutter/material.dart';

class Util {
  static Widget criarBotaoTextual({
    required String texto,
    required void Function()? onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ViewConfig.secondaryBlue,
      ),
      child: Text(
        texto,
        style: ViewConfig.textStyleBtn,
      ),
    );
  }

  static Widget customScaffold({
    required AppBar appBar,
    required Widget body,
  }) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: body,
      ),
    );
  }
}
