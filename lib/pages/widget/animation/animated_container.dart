import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  AlignmentGeometry _alignment = Alignment.topLeft;
  Duration _duration = Duration(seconds: 1);
  Curve _curve = Curves.fastOutSlowIn;
  Color _color = Colors.blue; // 颜色
  double _width = 100.0;
  double _height = 100.0;
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
                'Container的动画版本，只需要提供动画开始值和结束值，就可以实现新旧属性的值变化之间生成动画效果。',
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
                paramKey: 'alignment:',
                paramValue: '',
                groupValue: _alignment,
                items: [
                  {
                    'name': 'topLeft',
                    'value': Alignment.topLeft,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'topRight',
                    'value': Alignment.topRight,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'bottomRight',
                    'value': Alignment.bottomRight,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
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
                paramKey: 'width:',
                paramValue: '$_width',
                groupValue: _width,
                items: [
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'height:',
                paramValue: '$_height',
                groupValue: _height,
                items: [
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
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
            child: AnimatedContainer(
              width: _width,
              height: _height,
              color: _color,
              alignment: _alignment,
              duration: _duration,
              curve: _curve,
              child: FlutterLogo(size: 75),
            ),
          ),
        ),
      ],
    );
  }
}
