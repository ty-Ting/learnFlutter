import 'package:flutter/material.dart';
import 'package:my_first_flutter/routes/routes.dart';

import '../application.dart';

class EntryPage extends StatefulWidget {
  @override
  _EntryPagState createState() => _EntryPagState();
}

class _EntryPagState extends State<EntryPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Application.router.navigateTo(context, Routes.home, replace: true);
    });

    /// 2秒后跳转到主页面，上面注释的代码也可以做到倒计时
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('我是欢迎页面'),
        ),
      ),
    );
  }
}
