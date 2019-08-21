import 'package:flutter/material.dart';

class MaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialPage'),
        centerTitle:true,
      ),
      body: Center(
        child: Text('MaterialPage'),
      ),
    );
  }
}