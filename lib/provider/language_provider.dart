import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  String _languageCode = 'zh';
  String get lang => _languageCode;

  void changeLanguage() {
    _languageCode == 'zh' ? _languageCode = 'en' : _languageCode = 'zh';
    notifyListeners();
  }
}
