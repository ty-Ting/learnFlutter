import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/counterModel.dart';
import 'package:my_first_flutter/models/loginModel.dart';
import 'package:my_first_flutter/routes/routes.dart';
import 'package:provider/provider.dart';

import '../application.dart';

class EntryPage extends StatefulWidget {
  @override
  _EntryPagState createState() => _EntryPagState();
}

class _EntryPagState extends State<EntryPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 共享数据
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();
    final _login = Provider.of<LoginModel>(context);
    print(_login.info);
    Future.delayed(Duration(seconds: 5), () {
      if (_login.info.length <= 0) {
        Application.router.navigateTo(context, Routes.login, replace: true);
      } else {
        Application.router.navigateTo(context, Routes.home, replace: true);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Center(
        child: Text('我是欢迎页面,value${_counter.value}',
            style: TextStyle(fontSize: textSize)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Application.router
            .navigateTo(context, Routes.second, replace: false),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
