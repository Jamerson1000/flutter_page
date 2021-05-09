import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  final Widget child;
  final Function initState, dispose;

  const CustomPage({Key key, this.child, this.initState, this.dispose})
      : super(key: key);

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  void initState() {
    super.initState();

    widget.initState();
  }

  @override
  void dispose() {
    super.dispose();

    widget.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
