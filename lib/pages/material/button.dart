import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonPage'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: null,
        ),
      ),
    );
  }
}