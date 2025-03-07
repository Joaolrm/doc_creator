import 'package:doc_creator/01_view/doc_creator.dart';
import 'package:doc_creator/01_view/util.dart';
import 'package:doc_creator/01_view/view_config.dart';
import 'package:doc_creator/02_controller/initial_screen_controller.dart';
import 'package:doc_creator/03_model/app_config.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  InitialScreenState createState() => InitialScreenState();
}

class InitialScreenState extends State<InitialScreen> {
  InitialScreenController controller = InitialScreenController.instance;

  @override
  Widget build(BuildContext context) {
    if (controller.appIsDemo()) {
      return Util.customScaffold(
        appBarTitle: Text(
          "Versão: ${AppConfig.version}",
          style: ViewConfig.textStyleBig,
        ),
        appBarActions: [
          Text(
            controller.getDurationRemainderDemo(),
            style: ViewConfig.textStyleBig,
          )
        ],
        body: Center(
          child: Util.custonTextButtonBig(
              texto: "Iniciar aplicativo",
              onPressed: () {
                if (controller.demoExpired()) {
                  Util.showCustomDialog(
                      context: context,
                      title: ViewConfig.warning,
                      message: "Versão demo expirada!",
                      actions: [
                        Util.custonTextButton(
                          texto: ViewConfig.confirm,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ]);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DocCreator(),
                    ),
                  );
                }
              }),
        ),
      );
    } else {
      return DocCreator();
    }
  }
}
