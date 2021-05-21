import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  Color _theme = Colors.blue;
  Color get theme => _theme;

  void changeTheme(Color color) {
    _theme = color;
    notifyListeners();
  }
}
