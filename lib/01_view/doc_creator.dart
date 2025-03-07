import 'package:doc_creator/01_view/util.dart';
import 'package:doc_creator/01_view/view_config.dart';
import 'package:flutter/material.dart';

class DocCreator extends StatefulWidget {
  const DocCreator({super.key});

  @override
  DocCreatorState createState() => DocCreatorState();
}

class DocCreatorState extends State<DocCreator> {
  @override
  Widget build(BuildContext context) {
    return Util.customScaffold(
      appBarTitle: Text(
        "Doc Creator",
        style: ViewConfig.textStyleBig,
      ),
      body: Center(child: Text("Doc Creator")),
    );
  }
}
