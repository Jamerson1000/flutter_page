library flutter_page_template;

import 'package:flutter_page_template/src/pages/custom_page/page.dart';
import 'package:flutter_page_template/src/pages/login_page/login_page.dart';

export 'src/pages/login_page/login_page_all.dart';

class FlutterPage {
  customPage({
    child,
    initState,
    dispose,
  }) {
    return CustomPage(
      child: child,
      initState: initState,
      dispose: dispose,
    );
  }

  loginPage({
    appBar,
    logo,
    emailField,
    passwordField,
    dontHaveAccount,
    loginButton,
    initState,
    dispose,
  }) {
    return LoginPage(
        appBar: appBar,
        logo: logo,
        emailField: emailField,
        passwordField: passwordField,
        dontHaveAccount: dontHaveAccount,
        loginButton: loginButton,
        initState: initState,
        dispose: dispose);
  }
}
