import 'package:flutter/material.dart';

import 'home/home.dart';
import 'widget/widget.dart';
import 'favorites/favorites.dart';
import 'mine/mine.dart';
import 'about/about.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    WidgetPage(),
    FavouritesPage(),
    MinePage(),
  ];

  void _changeItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Show',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer:Drawer(
          child:AboutPage(),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _changeItem,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              title: Text('组件')),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('收藏')),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'))
            ],
        ),
      ),
    );
  }
}