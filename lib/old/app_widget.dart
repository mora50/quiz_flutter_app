import 'app_controller.dart';
import 'login_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instace,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.red,
                  brightness: AppController.instace.dartTheme
                      ? Brightness.light
                      : Brightness.dark),
              home: LoginPage());
        });
  }
}
