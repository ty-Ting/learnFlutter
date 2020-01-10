import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/routes/routes.dart';

import 'application.dart';

void main() {
  // 注册 fluro routes
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;

  runApp(App());
}
