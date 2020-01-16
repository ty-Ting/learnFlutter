import 'package:flutter/material.dart';
import 'package:my_first_flutter/jsonTomodels/user.dart';

class UserModel extends ChangeNotifier {
  User _user = new User();

  User get user => _user;

  void saveUser(obj) {
    _user = obj;
    notifyListeners();
  }
}
