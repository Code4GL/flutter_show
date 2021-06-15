import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoSliderPage extends StatefulWidget {
  @override
  _CupertinoSliderPageState createState() => _CupertinoSliderPageState();
}

class _CupertinoSliderPageState extends State<CupertinoSliderPage> {
  double num = 0.0;
  int _divisions = 2;
  Color _activeColor = Colors.blue;
  Color _thumbColor = Colors.blue;
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
                'IOS风格的滑块widget，可是设置颜色，离散值即分段个数等参数。',
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
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeColor = value;
                      });
                    },
                  },
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
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'thumbColor:',
                paramValue:
                    '#${_thumbColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _thumbColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _thumbColor = value;
                      });
                    },
                  },
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _thumbColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _thumbColor = value;
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
            child: CupertinoSlider(
              min: 0.0,
              max: 100.0,
              divisions: _divisions,
              activeColor: _activeColor,
              thumbColor: _thumbColor,
              value: num,
              onChanged: (double value) {
                setState(() {
                  num = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
