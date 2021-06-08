import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  @override
  _AnimatedPhysicalModelPageState createState() =>
      _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  bool _animateColor = true;
  bool _animateShadowColor = true;
  Duration _duration = Duration(seconds: 1);
  Curve _curve = Curves.fastOutSlowIn;
  Color _color = Colors.blue;
  Color _shadowColor = Colors.blue;
  double _elevation = 0.0;
  BoxShape _shape = BoxShape.rectangle;
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
                'PhysicalModel的动画版本，阴影、颜色都可以添加动画。形状没有动画。',
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
                paramKey: 'animateColor:',
                paramValue: '$_animateColor',
                value: _animateColor,
                onChangedCb: (bool value) {
                  setState(() {
                    _animateColor = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'animateShadowColor:',
                paramValue: '$_animateShadowColor',
                value: _animateShadowColor,
                onChangedCb: (bool value) {
                  setState(() {
                    _animateShadowColor = value;
                  });
                },
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
                paramKey: 'elevation:',
                paramValue: '$_elevation',
                groupValue: _elevation,
                items: [
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _elevation = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _elevation = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _elevation = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'shadowColor:',
                paramValue:
                    '#${_shadowColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _shadowColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _shadowColor = value;
                      });
                    },
                  },
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _shadowColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _shadowColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'shape:',
                paramValue: '$_shape',
                groupValue: _shape,
                items: [
                  {
                    'name': 'rectangle',
                    'value': BoxShape.rectangle,
                    'onChangedCb': (value) {
                      setState(() {
                        _shape = value;
                      });
                    },
                  },
                  {
                    'name': 'circle',
                    'value': BoxShape.circle,
                    'onChangedCb': (value) {
                      setState(() {
                        _shape = value;
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
            child: AnimatedPhysicalModel(
              animateColor: _animateColor,
              animateShadowColor: _animateShadowColor,
              duration: _duration,
              curve: _curve,
              color: _color,
              elevation: _elevation,
              shadowColor: _shadowColor,
              shape: _shape,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
