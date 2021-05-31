import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class AppbarPage extends StatefulWidget {
  @override
  _AppbarPageState createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> {
  Color _backgroundColor = Colors.pink;
  Color _foregroundColor = Colors.black;
  bool _centerTitle = true;
  bool _backwardsCompatibility = true;
  double _leadingWidth = 50.0;
  double _titleSpacing = 10.0;
  double _toolbarHeight = 50.0;
  double _toolbarOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 使用场景
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.scenesBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '温馨提示',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              Text(
                '应用栏通常用在Scaffold.appBar属性中，该属性将应用栏作为固定高度的小部件放置在屏幕顶部。如果想实现可滚动的应用栏，请使用SliverAppBar。在使用AppBar的时候，有两种方式可供选择：一、在App级别使用，全局共用一个AppBar，动态改变Appbar中的数据来实现不同页面的展示；二、在各个页面使用AppBar，每个页面单独管理自己的AppBar，更利于每个页面AppBar的个性化处理。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 参数配置
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.paramBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '参数配置',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              BooleanParam(
                paramKey: 'centerTitle:',
                paramValue: '$_centerTitle',
                value: _centerTitle,
                onChangedCb: (bool value) {
                  setState(() {
                    _centerTitle = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'backwardsCompatibility:',
                paramValue: '$_backwardsCompatibility',
                value: _backwardsCompatibility,
                onChangedCb: (bool value) {
                  setState(() {
                    _backwardsCompatibility = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'foregroundColor:',
                paramValue:
                    '#${_foregroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _foregroundColor,
                items: [
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _foregroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _foregroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'yellow',
                    'value': Colors.yellow,
                    'onChangedCb': (value) {
                      setState(() {
                        _foregroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'backgroundColor:',
                paramValue:
                    '#${_backgroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _backgroundColor,
                items: [
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'leadingWidth:',
                paramValue: '$_leadingWidth',
                groupValue: _leadingWidth,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _leadingWidth = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _leadingWidth = value;
                      });
                    },
                  },
                  {
                    'name': '150.0',
                    'value': 150.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _leadingWidth = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'titleSpacing:',
                paramValue: '$_titleSpacing',
                groupValue: _titleSpacing,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _titleSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _titleSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _titleSpacing = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'toolbarHeight:',
                paramValue: '$_toolbarHeight',
                groupValue: _toolbarHeight,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarHeight = value;
                      });
                    },
                  },
                  {
                    'name': '60.0',
                    'value': 60.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarHeight = value;
                      });
                    },
                  },
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarHeight = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'toolbarOpacity:',
                paramValue: '$_toolbarOpacity',
                groupValue: _toolbarOpacity,
                items: [
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarOpacity = value;
                      });
                    },
                  },
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarOpacity = value;
                      });
                    },
                  },
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _toolbarOpacity = value;
                      });
                    },
                  },
                ],
              ),
            ],
          ),
        ),
        // 展示区域
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: MyStyle.displayAreaShadowColor, //投影颜色
                blurRadius: MyStyle.displayAreaBlurRadius, //投影距离，有模糊效果
                spreadRadius: MyStyle.displayAreaSpreadRadius, // 扩展距离，无模糊效果
              )
            ],
            borderRadius: MyStyle.borderRadius,
          ),
          child: Center(
            child: Column(
              children: [
                AppBar(
                  title: Text('单独使用的AppBar'),
                  backgroundColor: _backgroundColor,
                  centerTitle: _centerTitle,
                  foregroundColor: _foregroundColor,
                  backwardsCompatibility: _backwardsCompatibility,
                  leadingWidth: _leadingWidth,
                  titleSpacing: _titleSpacing,
                  toolbarHeight: _toolbarHeight,
                  toolbarOpacity: _toolbarOpacity,
                  leading:
                      IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
                  actions: [
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                    IconButton(icon: Icon(Icons.share), onPressed: () {}),
                  ],
                ),
                Image(image: AssetImage('assets/images/basics/app_bar.png')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
