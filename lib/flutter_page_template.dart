library flutter_page_template;

import 'package:flutter/material.dart';
import 'package:flutter_page_template/src/pages/custom_page/page.dart';
import 'package:flutter_page_template/src/utils/template_type.dart';

export 'src/utils/template_type.dart';

class FlutterPage extends StatefulWidget {
  final int templateType;
  final Widget child;

  const FlutterPage(
      {Key key, @required this.templateType, @required this.child})
      : super(key: key);
  @override
  _FlutterPageState createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return widget.templateType == TemplateType.customPage
        ? CustomPage(
            child: widget.child,
          )
        : Container();
  }
}
