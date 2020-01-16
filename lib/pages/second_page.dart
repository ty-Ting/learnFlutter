import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/counterModel.dart';
import 'package:my_first_flutter/models/userModel.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Consumer3<CounterModel, int, UserModel>(
        builder:
            (context, CounterModel counter, int textSize, UserModel user, _) =>
                Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Privider-Value: ${counter.value}',
                style: TextStyle(fontSize: (textSize / 2).toDouble()),
              ),
              Text(
                'name: ${user.user.name}',
                style: TextStyle(fontSize: (textSize).toDouble()),
              ),
              Text(
                'userTel: ${user.user.userTel}',
                style: TextStyle(fontSize: (textSize / 2).toDouble()),
              ),
              Text(
                'email: ${user.user.email}',
                style: TextStyle(fontSize: (textSize / 2).toDouble()),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer<CounterModel>(
        builder: (context, CounterModel counter, child) => FloatingActionButton(
          onPressed: counter.increment,
          child: child,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
