import 'package:flutter/material.dart';
import 'package:flutter_page_template/flutter_page_template.dart';

class FlutterPageExample extends StatefulWidget {
  @override
  _FlutterPageExampleState createState() => _FlutterPageExampleState();
}

class _FlutterPageExampleState extends State<FlutterPageExample> {
  FlutterPage page = FlutterPage(); //Template object

  @override
  Widget build(BuildContext context) {
    return page.customPage(
      initState: () {}, // Init state method
      dispose: () {}, // Dispose method
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter custom page template'),
        ),
      ),
    );
  }
}
