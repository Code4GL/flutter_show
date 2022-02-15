import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/theme_provider.dart';

class ThemeSettingPage extends StatelessWidget {
  ThemeSettingPage({Key? key}) : super(key: key);
  final List<MaterialColor> _themes = Colors.primaries;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主题'),
      ),
      body: ListView(
        children: _themes.map<Widget>((e) {
          return GestureDetector(
            child: Container(
              child: Text(
                '#${e.value.toRadixString(16).toUpperCase()}',
                style: context.read<ThemeProvider>().themeColor == e
                    ? TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                    : TextStyle(color: Colors.black),
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  colors: [e.withOpacity(0.5), e.withOpacity(1.0)],
                ),
              ),
            ),
            onTap: () {
              context.read<ThemeProvider>().changeTheme(e);
            },
          );
        }).toList(),
      ),
    );
  }
}
