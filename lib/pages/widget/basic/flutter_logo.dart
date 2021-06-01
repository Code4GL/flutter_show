import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class FlutterLogoPage extends StatefulWidget {
  @override
  _FlutterLogoPageState createState() => _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  Curve _curve = Curves.fastOutSlowIn;
  Duration _duration = Duration(seconds: 1);
  double _size = 100.0;
  Color _textColor = Colors.blue;
  FlutterLogoStyle _style = FlutterLogoStyle.markOnly;
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
                '专门为Flutter的logo封装的一个Widget，方便快捷使用logo。包含了简单的动画及文字的显示与否。',
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
                paramKey: 'curve:',
                paramValue: '',
                groupValue: _curve,
                items: [
                  {
                    'name': 'fastOutSlowIn',
                    'value': Curves.fastOutSlowIn,
                    'onChangedCb': (value) {
                      setState(() {
                        _curve = value;
                      });
                    },
                  },
                  {
                    'name': 'easeInExpo',
                    'value': Curves.easeInExpo,
                    'onChangedCb': (value) {
                      setState(() {
                        _curve = value;
                      });
                    },
                  },
                  {
                    'name': 'elasticIn',
                    'value': Curves.elasticIn,
                    'onChangedCb': (value) {
                      setState(() {
                        _curve = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'duration:',
                paramValue: '$_duration',
                groupValue: _duration,
                items: [
                  {
                    'name': '1',
                    'value': Duration(seconds: 1),
                    'onChangedCb': (value) {
                      setState(() {
                        _duration = value;
                      });
                    },
                  },
                  {
                    'name': '2',
                    'value': Duration(seconds: 2),
                    'onChangedCb': (value) {
                      setState(() {
                        _duration = value;
                      });
                    },
                  },
                  {
                    'name': '3',
                    'value': Duration(seconds: 3),
                    'onChangedCb': (value) {
                      setState(() {
                        _duration = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'size:',
                paramValue: '$_size',
                groupValue: _size,
                items: [
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _size = value;
                      });
                    },
                  },
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _size = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _size = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'textColor:',
                paramValue:
                    '#${_textColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _textColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _textColor = value;
                      });
                    },
                  },
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _textColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _textColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'style:',
                paramValue: '',
                groupValue: _style,
                items: [
                  {
                    'name': 'markOnly',
                    'value': FlutterLogoStyle.markOnly,
                    'onChangedCb': (value) {
                      setState(() {
                        _style = value;
                      });
                    },
                  },
                  {
                    'name': 'horizontal',
                    'value': FlutterLogoStyle.horizontal,
                    'onChangedCb': (value) {
                      setState(() {
                        _style = value;
                      });
                    },
                  },
                  {
                    'name': 'stacked',
                    'value': FlutterLogoStyle.stacked,
                    'onChangedCb': (value) {
                      setState(() {
                        _style = value;
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
            child: FlutterLogo(
              curve: Curves.easeInExpo,
              duration: _duration,
              size: _size,
              textColor: _textColor,
              style: _style,
            ),
          ),
        ),
      ],
    );
  }
}
