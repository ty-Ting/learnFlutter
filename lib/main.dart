import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/counterModel.dart';
import 'package:my_first_flutter/models/loginModel.dart';
import 'package:my_first_flutter/routes/routes.dart';
import 'package:provider/provider.dart';

import 'application.dart';

void main() {
  // 注册 fluro routes
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  // 初始化全局数据
  final counter = CounterModel();
  final textSize = 48;
  final info = LoginModel();

  runApp(Provider<int>.value(
    value: textSize,
    child: ChangeNotifierProvider.value(value: counter, child: App()),
  ));
}
