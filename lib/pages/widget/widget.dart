import 'package:flutter/material.dart';

import 'button.dart';
class WidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            onPressed: null,
            child: Text(
              'Button',
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonPage()),
              );
            },
            textColor: Colors.white,
            color: Colors.blue,
            child: Text(
              'Button',
            ),
          ),
        ],
      ),
    );
  }
}
