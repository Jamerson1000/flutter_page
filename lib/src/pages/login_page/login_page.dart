import 'package:flutter/material.dart';
import 'controller/controller.dart';
import 'core/core.store.dart';
import 'components/components.dart';

class LoginPage extends StatefulWidget {
  final Widget? appBar,
      logo,
      emailField,
      passwordField,
      forgetPassword,
      dontHaveAccount,
      loginButton;
  final initState, dispose;

  const LoginPage(
      {Key? key,
      this.logo,
      this.appBar,
      this.emailField,
      this.passwordField,
      this.forgetPassword,
      this.dontHaveAccount,
      this.loginButton,
      this.initState,
      this.dispose})
      : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginPageStore store = LoginPageStore();
  final LoginPageController controller = LoginPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            widget.appBar ?? Container(),
            widget.logo ?? Container(),
            widget.emailField ?? Container(),
            widget.passwordField ?? Container(),
            widget.forgetPassword ?? Container(),
            widget.dontHaveAccount ?? Container(),
            widget.loginButton ?? Container(),
          ],
        ),
      ),
    );
  }
}
