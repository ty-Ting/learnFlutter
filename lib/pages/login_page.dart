import 'package:flutter/material.dart';
import 'package:my_first_flutter/application.dart';
import 'package:my_first_flutter/constants/Global.dart';
import 'package:my_first_flutter/models/loginModel.dart';
import 'package:my_first_flutter/routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

String changeFirstChar(String str, [bool upper = true]) {
  return (upper ? str[0].toUpperCase() : str[0].toLowerCase()) +
      str.substring(1);
}

String camelCase(String source) {
  if (source.isNotEmpty) {
    String newSource = source.split('_').map(changeFirstChar).join('');
    return changeFirstChar(newSource, false);
  }
  return '';
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  var loginUrl =
      'https://staging-accounts.creams.io/login?change-login-account';
  @override
  Widget build(BuildContext context) {
    final _login = Provider.of<LoginModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: WebView(
        initialUrl: loginUrl,
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          if (request.url.indexOf('access_token') != -1) {
            String urlParams = request.url.split('creams.io/#')[1];
            List<String> paramsWithKey = urlParams.split('&');
            Map<String, String> info = {};
            paramsWithKey.forEach((f) {
              var fs = f.split("=");
              var k = camelCase(fs[0]);
              var v = fs[1];
              print('${k}:${v}');
              _login.setInfo(k, v);
              info[k] = v;
            });
            Global.saveInfo(info);
            Application.router.navigateTo(context, Routes.home, replace: true);
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
