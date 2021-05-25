import 'package:flutter/material.dart';

class CommonProvider with ChangeNotifier {
  bool _showSemanticsDebugger = false;
  bool get showSemanticsDebugger => _showSemanticsDebugger;

  void changeSemantics(bool showSemanticsDebugger) {
    _showSemanticsDebugger = showSemanticsDebugger;
    notifyListeners();
  }
}
