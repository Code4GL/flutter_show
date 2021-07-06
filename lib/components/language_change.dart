import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';

class LanguageChange extends StatelessWidget {
  LanguageChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.translate),
      onPressed: () {
        context.read<LanguageProvider>().changeLanguage();
      },
    );
  }
}
