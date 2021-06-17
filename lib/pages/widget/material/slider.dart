import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  Color _activeColor = Colors.green;
  Color _inactiveColor = Colors.white;
  double _currentSliderValue = 20;
  int _divisions = 2;
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
                '如果onChanged为null或min..max给出的范围为空（即，如果min等于max），则滑块将被禁用。默认情况下，滑块将尽可能宽，垂直居中。当给定无限约束时，它将尝试使轨道宽度为144像素（每边有边距）并垂直收缩包裹。',
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
                paramKey: 'activeColor:',
                paramValue:
                    '#${_activeColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _activeColor,
                items: [
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'inactiveColor:',
                paramValue:
                    '#${_inactiveColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _inactiveColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveColor = value;
                      });
                    },
                  },
                  {
                    'name': 'red',
                    'value': Colors.red,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'divisions:',
                paramValue: '$_divisions',
                groupValue: _divisions,
                items: [
                  {
                    'name': '2',
                    'value': 2,
                    'onChangedCb': (value) {
                      setState(() {
                        _divisions = value;
                      });
                    },
                  },
                  {
                    'name': '5',
                    'value': 5,
                    'onChangedCb': (value) {
                      setState(() {
                        _divisions = value;
                      });
                    },
                  },
                  {
                    'name': '10',
                    'value': 10,
                    'onChangedCb': (value) {
                      setState(() {
                        _divisions = value;
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
            child: Slider(
              value: _currentSliderValue,
              activeColor: _activeColor,
              inactiveColor: _inactiveColor,
              divisions: _divisions,
              min: 0.0,
              max: 100.0,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
