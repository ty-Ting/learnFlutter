import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/counterModel.dart';
import 'package:my_first_flutter/models/loginModel.dart';
import 'package:my_first_flutter/pages/entry_page.dart';
import 'package:provider/provider.dart';

class Application {
  static Router router;
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LoginModel()),
        ChangeNotifierProvider.value(value: CounterModel()),
        Provider<int>.value(value: 36),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: EntryPage(),
        // 生成路由
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}
