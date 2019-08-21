import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_show/generated/i18n.dart';

import 'widget/widget.dart';
import 'material/material.dart';
import 'cupertino/cupertino.dart';
import 'favorites/favorites.dart';
import 'about/about.dart';
import 'package:flutter_show/components/webview.dart';

import 'widget/accessibility/accessibility.dart';
import 'widget/accessibility/detail/exclude_semantics.dart';
import 'widget/accessibility/detail/merge_semantics.dart';
import 'widget/accessibility/detail/semantics.dart';
import 'widget/animation/animation.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    WidgetPage(),
    MaterialPage(),
    CupertinoPage(),
    FavouritesPage(),
  ];
  @override
  void initState() {
    super.initState();
    I18n.onLocaleChanged = onLocaleChange;
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      I18n.locale = locale;
    });
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
                icon: Icon(Icons.widgets), title: Text('Widget')),
            BottomNavigationBarItem(
                icon: Icon(Icons.android), title: Text('Material')),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_iphone), title: Text('Cupertino')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text('Favorites')),
          ],
        ),
      ),
      localizationsDelegates: [
        I18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: <String, WidgetBuilder>{
        "WebView":(BuildContext context) =>
            new WebViewPage(),
        "Widget/Accessibility": (BuildContext context) =>
            new AccessibilityPage(),
        "Widget/Accessibility/ExcludeSemantics": (BuildContext context) =>
            new ExcludeSemanticsPage(),
        "Widget/Accessibility/MergeSemantics": (BuildContext context) =>
            new MergeSemanticsPage(),
        "Widget/Accessibility/Semantics": (BuildContext context) =>
            new SemanticsPage(),
        "Widget/Animation": (BuildContext context) => new AnimationPage(),
      },
    );
  }
}
