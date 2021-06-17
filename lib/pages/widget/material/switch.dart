import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _result = false;
  Color _activeColor = Colors.green;
  Color _activeTrackColor = Colors.green;
  Color _inactiveThumbColor = Colors.grey;
  Color _inactiveTrackColor = Colors.grey;
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
                '如果onChanged回调为空，则开关将被禁用（它不会响应输入）。默认情况下，禁用开关的拇指和轨道以灰色阴影呈现。禁用开关的默认外观可以用inactiveThumbColor和inactiveTrackColor覆盖。',
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
                paramKey: 'activeTrackColor:',
                paramValue: '',
                groupValue: _activeTrackColor,
                items: [
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeTrackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeTrackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _activeTrackColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'inactiveThumbColor:',
                paramValue:
                    '#${_inactiveThumbColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _inactiveThumbColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveThumbColor = value;
                      });
                    },
                  },
                  {
                    'name': 'lime',
                    'value': Colors.lime,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveThumbColor = value;
                      });
                    },
                  },
                  {
                    'name': 'teal',
                    'value': Colors.teal,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveThumbColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'inactiveTrackColor:',
                paramValue:
                    '#${_inactiveTrackColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _inactiveTrackColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveTrackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'lime',
                    'value': Colors.lime,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveTrackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'teal',
                    'value': Colors.teal,
                    'onChangedCb': (value) {
                      setState(() {
                        _inactiveTrackColor = value;
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
            child: Switch(
              activeColor: _activeColor,
              activeTrackColor: _activeTrackColor,
              inactiveThumbColor: _inactiveThumbColor,
              inactiveTrackColor: _inactiveTrackColor,
              value: _result,
              onChanged: (bool value) {
                setState(() {
                  _result = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
