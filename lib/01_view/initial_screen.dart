import 'package:doc_creator/01_view/util.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Util.customScaffold(
      appBar: AppBar(
        title: Text("Tela inicial"),
      ),
      body: Center(
        child: Util.criarBotaoTextual(
            texto: "Teste",
            onPressed: () {
              print("Botão pressionado");
            }),
      ),
    );
  }
}
