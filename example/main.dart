import 'package:flutter/material.dart';
import 'package:flutter_page_template/flutter_page_template.dart';

class FlutterPageExample extends StatefulWidget {
  @override
  _FlutterPageExampleState createState() => _FlutterPageExampleState();
}

class _FlutterPageExampleState extends State<FlutterPageExample> {
  @override
  Widget build(BuildContext context) {
    return FlutterPage(
      templateType: TemplateType.customPage,
      child: Scaffold(
        body: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }
}
