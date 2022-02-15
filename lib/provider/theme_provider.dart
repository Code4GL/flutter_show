import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  MaterialColor _themeColor = Colors.blue;
  MaterialColor get themeColor => _themeColor;

  void changeTheme(MaterialColor color) {
    _themeColor = color;
    notifyListeners();
  }
}
