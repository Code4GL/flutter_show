import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class PlaceholderPage extends StatefulWidget {
  @override
  _PlaceholderPageState createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  Color _color = Colors.grey;
  double _strokeWidth = 2.0;
  double _fallbackHeight = 100.0;
  double _fallbackWidth = 100.0;
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
                '这是一个占位符Widget，表示将来会有一个Widget添加到这里，开发过程中常用。fallbackWidth和fallbackHeight只有在无限Width和无限Height时生效。',
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
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
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
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'strokeWidth:',
                paramValue: '$_strokeWidth',
                groupValue: _strokeWidth,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _strokeWidth = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _strokeWidth = value;
                      });
                    },
                  },
                  {
                    'name': '5.0',
                    'value': 5.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _strokeWidth = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'fallbackHeight:',
                paramValue: '$_fallbackHeight',
                groupValue: _fallbackHeight,
                items: [
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackHeight = value;
                      });
                    },
                  },
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackHeight = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackHeight = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'fallbackWidth:',
                paramValue: '$_fallbackWidth',
                groupValue: _fallbackWidth,
                items: [
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackWidth = value;
                      });
                    },
                  },
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackWidth = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fallbackWidth = value;
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
            child: Placeholder(
              color: _color,
              strokeWidth: _strokeWidth,
              fallbackHeight: _fallbackHeight,
              fallbackWidth: _fallbackWidth,
            ),
          ),
        ),
      ],
    );
  }
}
