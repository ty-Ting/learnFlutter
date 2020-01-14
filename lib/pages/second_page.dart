import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/counterModel.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('second screen rebuild');
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Consumer2<CounterModel, int>(
        builder: (context, CounterModel counter, int textSize, _) => Center(
          child: Text(
            'Value: ${counter.value}',
            style: TextStyle(fontSize: textSize.toDouble()),
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
