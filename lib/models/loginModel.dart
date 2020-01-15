import 'package:flutter/material.dart';

class InfoModel {
  String token;
  String tokenType;
  String state;
  String expiresIn;
  String openId;
  String unionId;
  String jti;

  void setValue(String key, String value) {
    switch (key) {
      case 'accessToken':
        token = value;
        break;
      case 'tokenType':
        tokenType = value;
        break;
      case 'state':
        state = value;
        break;
      case 'expiresIn':
        expiresIn = value;
        break;
      case 'openId':
        openId = value;
        break;
      case 'unionId':
        unionId = value;
        break;
      case 'jti':
        jti = value;
        break;
      default:
        break;
    }
  }
}

class LoginModel with ChangeNotifier {
  InfoModel _info = new InfoModel();
  InfoModel get info => _info;

  void saveInfo(obj) {
    _info = obj;
    notifyListeners();
  }

  void setInfo(String key, String value) {
    _info.setValue(key, value);
  }

  void clearInfo(obj) {
    _info = new InfoModel();
    notifyListeners();
  }
}
