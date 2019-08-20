import 'package:flutter/material.dart';
import 'package:flutter_show/generated/i18n.dart';


class ExcludeSemanticsPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExcludeSemanticsPage'),
      ),
      body: Center(
        child: Text(I18n.of(context).title),
      ),
    );
  }
}
