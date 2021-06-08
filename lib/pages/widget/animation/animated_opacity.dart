import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  Duration _duration = Duration(seconds: 1);
  Curve _curve = Curves.fastOutSlowIn;
  double _opacityLevel = 1.0;
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
                'Opacity的动画版本，透明度改变时产生动画效果。动画不透明度相对昂贵，因为它需要将子对象绘制到中间缓冲区中。',
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
                paramKey: 'opacityLevel:',
                paramValue: '$_opacityLevel',
                groupValue: _opacityLevel,
                items: [
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _opacityLevel = value;
                      });
                    },
                  },
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _opacityLevel = value;
                      });
                    },
                  },
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _opacityLevel = value;
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
            child: AnimatedOpacity(
              opacity: _opacityLevel,
              duration: _duration,
              curve: _curve,
              child: FlutterLogo(size: 100),
            ),
          ),
        ),
      ],
    );
  }
}
