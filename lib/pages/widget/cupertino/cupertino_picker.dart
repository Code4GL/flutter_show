import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoPickerPage extends StatefulWidget {
  @override
  _CupertinoPickerPageState createState() => _CupertinoPickerPageState();
}

class _CupertinoPickerPageState extends State<CupertinoPickerPage> {
  bool _useMagnifier = true;
  double _itemExtent = 20.0;
  double _diameterRatio = 0.5;
  double _magnification = 0.5;
  double _squeeze = 0.5;
  double _offAxisFraction = -0.5;
  Color _backgroundColor = Colors.white;
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
                '通常和showCupertinoModalPopup()联合使用，实现底部自定义选择器。',
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
                paramKey: 'useMagnifier:',
                paramValue: '$_useMagnifier',
                value: _useMagnifier,
                onChangedCb: (bool value) {
                  setState(() {
                    _useMagnifier = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'itemExtent:',
                paramValue: '$_itemExtent',
                groupValue: _itemExtent,
                items: [
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemExtent = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemExtent = value;
                      });
                    },
                  },
                  {
                    'name': '40.0',
                    'value': 40.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemExtent = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'backgroundColor:',
                paramValue:
                    '#${_backgroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _backgroundColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'diameterRatio:',
                paramValue: '$_diameterRatio',
                groupValue: _diameterRatio,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _diameterRatio = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _diameterRatio = value;
                      });
                    },
                  },
                  {
                    'name': '1.5',
                    'value': 1.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _diameterRatio = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'magnification:',
                paramValue: '$_magnification',
                groupValue: _magnification,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _magnification = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _magnification = value;
                      });
                    },
                  },
                  {
                    'name': '1.5',
                    'value': 1.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _magnification = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'offAxisFraction:',
                paramValue: '$_offAxisFraction',
                groupValue: _offAxisFraction,
                items: [
                  {
                    'name': '-0.5',
                    'value': -0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _offAxisFraction = value;
                      });
                    },
                  },
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _offAxisFraction = value;
                      });
                    },
                  },
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _offAxisFraction = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'squeeze:',
                paramValue: '$_squeeze',
                groupValue: _squeeze,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _squeeze = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _squeeze = value;
                      });
                    },
                  },
                  {
                    'name': '2.5',
                    'value': 2.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _squeeze = value;
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
              onPressed: () {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => Container(
                    height: 300,
                    child: CupertinoPicker(
                      useMagnifier: _useMagnifier,
                      itemExtent: _itemExtent,
                      backgroundColor: _backgroundColor,
                      diameterRatio: _diameterRatio,
                      magnification: _magnification,
                      offAxisFraction: _offAxisFraction,
                      squeeze: _squeeze,
                      onSelectedItemChanged: (int value) {},
                      children: [
                        Text("0"),
                        Text("1"),
                        Text("2"),
                        Text("3"),
                        Text("4"),
                      ],
                    ),
                  ),
                );
              },
              child: const Text('CupertinoPicker'),
            ),
          ),
        ),
      ],
    );
  }
}
