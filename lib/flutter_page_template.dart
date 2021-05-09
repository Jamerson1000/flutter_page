library flutter_page_template;

import 'package:flutter/material.dart';
import 'package:flutter_page_template/src/pages/custom_page/page.dart';
import 'package:flutter_page_template/src/pages/login_page/login_page.dart';
import 'package:flutter_page_template/src/utils/template_type.dart';

export 'src/utils/template_type.dart';
export 'src/pages/login_page/login_page_all.dart';

class FlutterPage extends StatefulWidget {
  final int templateType;
  final Widget child; // only custom page template
  final Widget appBar,
      logo,
      emailField,
      passwordField,
      forgetPassword,
      dontHaveAccount,
      loginButton; // only login page template

  const FlutterPage(
      {Key key,
      this.templateType,
      this.child,
      this.appBar,
      this.logo,
      this.emailField,
      this.passwordField,
      this.forgetPassword,
      this.dontHaveAccount,
      this.loginButton})
      : super(key: key);
  @override
  _FlutterPageState createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.templateType == TemplateType.customPage) {
      return CustomPage(
        child: widget.child,
      );
    }
    if (widget.templateType == TemplateType.customPage) {
      return LoginPage(
        appBar: widget.appBar,
        emailField: widget.emailField,
        passwordField: widget.passwordField,
        forgetPassword: widget.forgetPassword,
        dontHaveAccount: widget.dontHaveAccount,
        loginButton: widget.loginButton,
      );
    }

    return Container();
  }
}
