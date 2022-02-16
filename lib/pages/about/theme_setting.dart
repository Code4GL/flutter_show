import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/theme_provider.dart';

class ThemeSettingPage extends StatefulWidget {
  ThemeSettingPage({Key? key}) : super(key: key);

  @override
  State<ThemeSettingPage> createState() => _ThemeSettingPageState();
}

class _ThemeSettingPageState extends State<ThemeSettingPage> {
  final List<Color> _themes = Colors.primaries;

  @override
  Widget build(BuildContext context) {
    ThemeMode _themeMode = Provider.of<ThemeProvider>(context).themeMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('主题'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color:
                        Theme.of(context).primaryColor.withOpacity(0.2), //投影颜色
                    blurRadius: 5, //投影距离，有模糊效果
                    spreadRadius: 5, // 扩展距离，无模糊效果
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '主题模式',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio<ThemeMode>(
                            value: ThemeMode.system,
                            groupValue: _themeMode,
                            onChanged: (value) {
                              setState(() {
                                _themeMode = value!;
                                Provider.of<ThemeProvider>(context,
                                        listen: false)
                                    .changeThemeMode(value);
                              });
                            },
                          ),
                          Text('跟随系统'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<ThemeMode>(
                            value: ThemeMode.light,
                            groupValue: _themeMode,
                            onChanged: (value) {
                              setState(() {
                                _themeMode = value!;
                                Provider.of<ThemeProvider>(context,
                                        listen: false)
                                    .changeThemeMode(value);
                              });
                            },
                          ),
                          Text('浅色模式'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<ThemeMode>(
                            value: ThemeMode.dark,
                            groupValue: _themeMode,
                            onChanged: (value) {
                              setState(() {
                                _themeMode = value!;
                                Provider.of<ThemeProvider>(context,
                                        listen: false)
                                    .changeThemeMode(value);
                              });
                            },
                          ),
                          Text('深色模式'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(5),
                        child: Text('主题色'),
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(), //禁用滑动事件
                        children: _themes.map<Widget>((e) {
                          return GestureDetector(
                            child: Container(
                              child: Text(
                                '#${e.value.toRadixString(16).toUpperCase()}',
                                style: Provider.of<ThemeProvider>(context)
                                            .themeColor ==
                                        e
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
                                  colors: [
                                    e.withOpacity(0.5),
                                    e.withOpacity(1.0)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Provider.of<ThemeProvider>(context, listen: false)
                                  .changeThemeColor(e);
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
