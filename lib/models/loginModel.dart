import 'package:flutter/material.dart';

class LoginModel with ChangeNotifier {
  Map<String, String> _info = {};
  Map<String, String> get info => _info;

  void saveInfo(obj) {
    _info = obj;
    notifyListeners();
  }

  void clearInfo(obj) {
    _info = {};
    notifyListeners();
  }
}
