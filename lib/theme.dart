import 'package:flutter/material.dart';

enum ThemeMode {
  light,
  dark,
  system,
}

class ThemeNotifier with ChangeNotifier {
  ThemeMode _currentThemeMode = ThemeMode.system;

  ThemeMode get currentThemeMode => _currentThemeMode;

  void setThemeMode(ThemeMode themeMode) {
    _currentThemeMode = themeMode;
    notifyListeners();
  }
}
