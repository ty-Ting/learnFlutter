/*
 * @Author: tanyanting
 * @Date: 2020-01-07 14:23:31
 * @Last Modified by: tanyanting
 * @Last Modified time: 2020-01-08 16:05:50
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:my_first_flutter/common/Global.dart';

import 'common/browser.dart';

void main() => Global.init().then((e) => runApp(new MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Welcome to Flutter"),
          ),
          body: new Center(child: new RandomWords())),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 50.0), // 容器外填充
        height: 30.0,
        child: Text(wordPair.asPascalCase),
      ),
      Container(
          margin: EdgeInsets.only(top: 50.0), // 容器外填充
          constraints: BoxConstraints.tightFor(width: 150.0, height: 50.0),
          child: RaisedButton(
            child: Text("Browser"),
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                return new Browser(
                  url: "https://www.creams.io/",
                  title: "Creams官网",
                );
              }));
            },
          ))
    ]);
  }
}
