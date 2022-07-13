import 'package:flutter/material.dart';
import 'package:rohan/app/dark_theme.dart';
import 'package:rohan/app/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;

  changeTheme() {
    if(currentTheme == lightTheme) {
      currentTheme = darkTheme;
    } else {
      currentTheme = lightTheme;
    }
    notifyListeners();
  }
}