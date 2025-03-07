import 'package:doc_creator/01_view/view_config.dart';
import 'package:flutter/material.dart';

class Util {
  static Widget custonTextButton({
    required String texto,
    required void Function()? onPressed,
  }) {
    return _custonTextButtonBase(
      texto: texto,
      onPressed: onPressed,
      style: ViewConfig.textStyle,
    );
  }

  static Widget custonTextButtonBig({
    required String texto,
    required void Function()? onPressed,
  }) {
    return _custonTextButtonBase(
      texto: texto,
      onPressed: onPressed,
      style: ViewConfig.textStyleBig,
    );
  }

  static Widget _custonTextButtonBase({
    required String texto,
    required void Function()? onPressed,
    required TextStyle style,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ViewConfig.secondaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          texto,
          style: style,
        ),
      ),
    );
  }

  static Widget customScaffold({
    Widget? appBarTitle,
    List<Widget>? appBarActions,
    required Widget body,
  }) {
    List<Widget>? actions;

    if (appBarActions != null) {
      actions = appBarActions
          .map((action) => Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: action,
              ))
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        backgroundColor: ViewConfig.primaryColor,
        actions: actions,
        iconTheme: IconThemeData(color: ViewConfig.thirdColor),
      ),
      body: body,
    );
  }

  static void showCustomDialog({
    required BuildContext context,
    List<Widget>? actions,
    required String title,
    required String message,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontSize: ViewConfig.fontSizeBig,
            ),
          ),
          content: SizedBox(
            height: 200,
            width: 350,
            child: Center(
              child: Text(
                message,
                style: TextStyle(
                  fontSize: ViewConfig.fontSize,
                ),
              ),
            ),
          ),
          actions: actions,
        );
      },
    );
  }
}
