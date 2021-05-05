import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_page_template/src/core/core.dart';
import 'package:flutter_page_template/src/utils/flutter_page_template.dart';

class FlutterPage extends StatefulWidget {
  final List<Widget> widgets;
  final TemplateType templateType;

  const FlutterPage({Key key, this.widgets, this.templateType})
      : super(key: key);

  @override
  _FlutterPageState createState() => _FlutterPageState(widgets);
}

class _FlutterPageState extends State<FlutterPage> {
  BaseStore store = BaseStore();

  _FlutterPageState(widgets) {
    store.widgets = widgets;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Column(
          children: widget.widgets,
        ),
      ),
    );
  }
}
