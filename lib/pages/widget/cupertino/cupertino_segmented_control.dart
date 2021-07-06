import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoSegmentedControlPage extends StatefulWidget {
  @override
  _CupertinoSegmentedControlPageState createState() =>
      _CupertinoSegmentedControlPageState();
}

class _CupertinoSegmentedControlPageState
    extends State<CupertinoSegmentedControlPage> {
  Color _borderColor = Colors.blue;
  Color _pressedColor = Colors.blue[100]!;
  Color _selectedColor = Colors.blue;
  Color _unselectedColor = Colors.blue[300]!;
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
                'IOS风格的分段选择器，用于多个互斥选项选择的widget。',
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
                paramKey: 'borderColor:',
                paramValue:
                    '#${_borderColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _borderColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _borderColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _borderColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _borderColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'pressedColor:',
                paramValue:
                    '#${_pressedColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _pressedColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue[100],
                    'onChangedCb': (value) {
                      setState(() {
                        _pressedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple[100],
                    'onChangedCb': (value) {
                      setState(() {
                        _pressedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange[100],
                    'onChangedCb': (value) {
                      setState(() {
                        _pressedColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'selectedColor:',
                paramValue:
                    '#${_selectedColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _selectedColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'unselectedColor:',
                paramValue: '',
                groupValue: _unselectedColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue[300],
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple[300],
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange[300],
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedColor = value;
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
            child: CupertinoSegmentedControl(
              borderColor: _borderColor,
              pressedColor: _pressedColor,
              selectedColor: _selectedColor,
              unselectedColor: _unselectedColor,
              onValueChanged: (value) {},
              children: {
                0: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Left'),
                ),
                1: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Middle'),
                ),
                2: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Right'),
                )
              },
            ),
          ),
        ),
      ],
    );
  }
}
