import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavouritesPage'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
      ),
      body: Center(
        child: Text('FavouritesPage'),
      ),
    );
  }
}
