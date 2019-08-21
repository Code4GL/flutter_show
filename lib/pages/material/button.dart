import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonPage'),
        centerTitle:true,
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