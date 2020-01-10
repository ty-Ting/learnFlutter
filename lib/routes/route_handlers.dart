import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/pages/home_page.dart';
import 'package:my_first_flutter/pages/entry_page.dart';

var entryHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new EntryPage();
});

var homeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyHomePage(title: 'Flutter Demo Home Page');
});
