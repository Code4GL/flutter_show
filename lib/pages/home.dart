import 'package:flutter/material.dart';
import 'package:flutter_show/provider/theme_provider.dart';

import 'widget/widget.dart';
import 'material/material.dart';
import 'cupertino/cupertino.dart';
import 'favorites/favorites.dart';
import 'about/about.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    WidgetPage(),
    MyMaterialPage(),
    CupertinoPage(),
    FavouritesPage(),
  ];
  @override
  void initState() {
    super.initState();
  }

  void _changeItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Show',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: context.watch<ThemeProvider>().theme,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: AboutPage(),
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
              icon: Icon(Icons.widgets),
              label: 'Widget',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.android),
              label: 'Material',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_iphone),
              label: 'Cupertino',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        ),
      ),
    );
  }
}
