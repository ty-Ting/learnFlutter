import 'package:flutter/material.dart';
import 'package:my_first_flutter/application.dart';
import 'package:my_first_flutter/jsonTomodels/user.dart';
import 'package:my_first_flutter/models/userModel.dart';
import 'package:my_first_flutter/routes/routes.dart';
import 'package:my_first_flutter/utils/request.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _counter = 0;

  void _incrementCounter() {
    getList();
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _fetchUserMe() async {
    // 查找用户详情
    var data = await fetch(
        "https://staging-app.creams.io/api/web/users/info?clientId=creams_web_app");
    if (data != null) {
      print('---------用户详情--------');
      print(data.toString());
      print('----------end------------');
      var user = User.fromJson(data);
      Provider.of<UserModel>(context, listen: false).saveUser(user);
    }
  }

  void getList() async {
    var data = await fetch(
        "https://staging-api.creams.io/crm-promotion/support-cities",
        noToken: true);
    print(data.toString());
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('state _counter:', style: TextStyle(fontSize: 24)),
            Text(
              ' $_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text('查看provider用户信息'),
              onPressed: () {
                Application.router
                    .navigateTo(context, Routes.second, replace: false);
              },
            ),
            RaisedButton(
              child: Text('请求用户信息'),
              onPressed: () {
                _fetchUserMe();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
