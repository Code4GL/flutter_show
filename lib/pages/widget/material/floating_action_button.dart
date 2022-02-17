import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonPageState createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  static Function press = () => {};
  void Function()? _onPressed;
  bool _mini = false;
  Color _backgroundColor = Colors.green;
  Color _foregroundColor = Colors.white;
  Color _splashColor = Colors.white;
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
                '浮动操作按钮是一个圆形图标按钮，它悬停在内容上以提升应用程序中的主要操作。浮动操作按钮最常用于Scaffold.floatingActionButton字段。每个屏幕最多使用一个浮动操作按钮。',
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
              RadioParam(
                paramKey: 'onPressed:',
                paramValue: '',
                groupValue: _onPressed,
                items: [
                  {
                    'name': 'null',
                    'value': null,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                  {
                    'name': 'function',
                    'value': press,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                ],
              ),
              BooleanParam(
                paramKey: 'mini:',
                paramValue: '$_mini',
                value: _mini,
                onChangedCb: (bool value) {
                  setState(() {
                    _mini = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'backgroundColor:',
                paramValue: '',
                groupValue: _backgroundColor,
                items: [
                  {
                    'name': 'green',
                    'value': Colors.green,
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
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'foregroundColor:',
                paramValue:
                    '#${_foregroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _foregroundColor,
                items: [
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
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _foregroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _foregroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'splashColor:',
                paramValue:
                    '#${_splashColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _splashColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
                      });
                    },
                  },
                  {
                    'name': 'brown',
                    'value': Colors.brown,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
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
          height: 300,
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
            child: Scaffold(
              appBar: AppBar(title: Text('Floating Action Button')),
              body: Center(child: Text('Press the button below!')),
              floatingActionButton: FloatingActionButton(
                onPressed: _onPressed,
                mini: _mini,
                backgroundColor: _backgroundColor,
                foregroundColor: _foregroundColor,
                splashColor: _splashColor,
                child: Icon(Icons.navigation),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
