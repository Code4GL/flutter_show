import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoButtonPage extends StatefulWidget {
  @override
  _CupertinoButtonPageState createState() => _CupertinoButtonPageState();
}

class _CupertinoButtonPageState extends State<CupertinoButtonPage> {
  static Function press = () => {};
  late Function _onPressed;
  EdgeInsetsGeometry _padding = EdgeInsets.zero;
  late Color _color;
  Color _disabledColor = Colors.grey;
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
                'IOS样式的按钮，通常使用SizedBox限制其宽高。',
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
              RadioParam(
                paramKey: 'padding:',
                paramValue: '$_padding',
                groupValue: _padding,
                items: [
                  {
                    'name': 'zero',
                    'value': EdgeInsets.zero,
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '20',
                    'value': EdgeInsets.all(20),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '30',
                    'value': EdgeInsets.all(30),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'color:',
                paramValue: '',
                groupValue: _color,
                items: [
                  {
                    'name': 'null',
                    'value': null,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'disabledColor:',
                paramValue:
                    '#${_disabledColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _disabledColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black54',
                    'value': Colors.black54,
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple[100],
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
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
            child: CupertinoButton(
              child: Text('CupertinoButton'),
              padding: _padding,
              color: _color,
              disabledColor: _disabledColor,
              onPressed: () => _onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
