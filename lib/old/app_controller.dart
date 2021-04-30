import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  bool dartTheme = false;

  static AppController instace = AppController();

  changeTheme() {
    dartTheme = !dartTheme;
    notifyListeners();
  }
}
