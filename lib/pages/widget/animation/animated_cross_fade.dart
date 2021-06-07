import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  @override
  _AnimatedCrossFadePageState createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  AlignmentGeometry _alignment = Alignment.topLeft;
  Duration _duration = Duration(seconds: 1);
  Curve _firstCurve = Curves.ease;
  Curve _secondCurve = Curves.ease;
  Curve _sizeCurve = Curves.ease;
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
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
                '这是一个在两个Widget之前切换的动画组件，通过crossFadeState参数来控制，其中firstCurve是反向执行的，即提供Curves.linear时动画是淡出效果。',
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
                paramKey: 'firstCurve:',
                paramValue: '',
                groupValue: _firstCurve,
                items: [
                  {
                    'name': 'ease',
                    'value': Curves.ease,
                    'onChangedCb': (value) {
                      setState(() {
                        _firstCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'bounceInOut',
                    'value': Curves.bounceInOut,
                    'onChangedCb': (value) {
                      setState(() {
                        _firstCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'easeInCirc',
                    'value': Curves.easeInCirc,
                    'onChangedCb': (value) {
                      setState(() {
                        _firstCurve = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'secondCurve:',
                paramValue: '',
                groupValue: _secondCurve,
                items: [
                  {
                    'name': 'ease',
                    'value': Curves.ease,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'bounceInOut',
                    'value': Curves.bounceInOut,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'easeInCirc',
                    'value': Curves.easeInCirc,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondCurve = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'sizeCurve:',
                paramValue: '',
                groupValue: _sizeCurve,
                items: [
                  {
                    'name': 'ease',
                    'value': Curves.ease,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'bounceInOut',
                    'value': Curves.bounceInOut,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeCurve = value;
                      });
                    },
                  },
                  {
                    'name': 'easeInCirc',
                    'value': Curves.easeInCirc,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeCurve = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'curve:',
                paramValue: '',
                groupValue: _crossFadeState,
                items: [
                  {
                    'name': 'fastOutSlowIn',
                    'value': CrossFadeState.showFirst,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossFadeState = value;
                      });
                    },
                  },
                  {
                    'name': 'bounceInOut',
                    'value': CrossFadeState.showSecond,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossFadeState = value;
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
            child: AnimatedCrossFade(
              alignment: _alignment,
              duration: _duration,
              firstCurve: _firstCurve,
              secondCurve: _secondCurve,
              sizeCurve: _sizeCurve,
              crossFadeState: _crossFadeState,
              firstChild:
                  FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild:
                  FlutterLogo(style: FlutterLogoStyle.stacked, size: 200.0),
            ),
          ),
        ),
      ],
    );
  }
}
