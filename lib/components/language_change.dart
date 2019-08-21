import 'package:flutter/material.dart';
import 'package:flutter_show/generated/i18n.dart';

class LanguageChange extends StatelessWidget {
  LanguageChange({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String runtimeType = I18n.of(context).runtimeType.toString();
    return IconButton(
      icon: Icon(Icons.translate),
      onPressed: () {
        if (runtimeType == "_I18n_zh_CN") {
          I18n.onLocaleChanged(Locale("en"));
        } else {
          I18n.onLocaleChanged(Locale("zh"));
        }
      },
    );
  }
}
