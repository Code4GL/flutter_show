import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  @override
  _AnimatedDefaultTextStylePageState createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  Duration _duration = Duration(seconds: 1);
  Curve _curve = Curves.fastOutSlowIn;
  Color _color = Colors.blue; // 颜色
  double _fontSize = 50.0;
  FontWeight _fontWeight = FontWeight.normal;
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
                'DefaultTextStyle的动画版本,当样式发生改变时会伴随着动画。textAlign、softWrap、overflow、maxLines、textWidthBasis和textHeightBehavior属性没有动画，更改后立即生效。',
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
                    'name': 'bounceInOut',
                    'value': Curves.bounceInOut,
                    'onChangedCb': (value) {
                      setState(() {
                        _curve = value;
                      });
                    },
                  },
                  {
                    'name': 'easeInCirc',
                    'value': Curves.easeInCirc,
                    'onChangedCb': (value) {
                      setState(() {
                        _curve = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
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
                    'name': 'pink',
                    'value': Colors.pink,
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
                paramKey: 'fontSize:',
                paramValue: '$_fontSize',
                groupValue: _fontSize,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontSize = value;
                      });
                    },
                  },
                  {
                    'name': '80.0',
                    'value': 80.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontSize = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontSize = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'curve:',
                paramValue: '$_fontWeight',
                groupValue: _fontWeight,
                items: [
                  {
                    'name': 'normal',
                    'value': FontWeight.normal,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontWeight = value;
                      });
                    },
                  },
                  {
                    'name': 'w500',
                    'value': FontWeight.w500,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontWeight = value;
                      });
                    },
                  },
                  {
                    'name': 'bold',
                    'value': FontWeight.bold,
                    'onChangedCb': (value) {
                      setState(() {
                        _fontWeight = value;
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
            child: AnimatedDefaultTextStyle(
              duration: _duration,
              curve: _curve,
              style: TextStyle(
                color: _color,
                fontSize: _fontSize,
                fontWeight: _fontWeight,
              ),
              child: Text('Flutter'),
            ),
          ),
        ),
      ],
    );
  }
}
