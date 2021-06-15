import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoTimerPickerPage extends StatefulWidget {
  @override
  _CupertinoTimerPickerPageState createState() =>
      _CupertinoTimerPickerPageState();
}

class _CupertinoTimerPickerPageState extends State<CupertinoTimerPickerPage> {
  Alignment _alignment = Alignment.center;
  CupertinoTimerPickerMode _mode = CupertinoTimerPickerMode.hms;
  Color _backgroundColor = Colors.white;
  int _minuteInterval = 1;
  int _secondInterval = 1;
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
                'IOS风格时间选择器，通常和showModalBottomSheet一起使用。此选择器显示带有小时、分钟和秒微调器的倒计时持续时间。持续时间限制在0到23小时59分59秒之间。',
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
                    'name': 'center',
                    'value': Alignment.center,
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
                paramKey: 'mode:',
                paramValue: '',
                groupValue: _mode,
                items: [
                  {
                    'name': 'hms',
                    'value': CupertinoTimerPickerMode.hms,
                    'onChangedCb': (value) {
                      setState(() {
                        _mode = value;
                      });
                    },
                  },
                  {
                    'name': 'hm',
                    'value': CupertinoTimerPickerMode.hm,
                    'onChangedCb': (value) {
                      setState(() {
                        _mode = value;
                      });
                    },
                  },
                  {
                    'name': 'ms',
                    'value': CupertinoTimerPickerMode.ms,
                    'onChangedCb': (value) {
                      setState(() {
                        _mode = value;
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
                paramKey: 'minuteInterval:',
                paramValue: '$_minuteInterval',
                groupValue: _minuteInterval,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _minuteInterval = value;
                      });
                    },
                  },
                  {
                    'name': '6',
                    'value': 6,
                    'onChangedCb': (value) {
                      setState(() {
                        _minuteInterval = value;
                      });
                    },
                  },
                  {
                    'name': '10',
                    'value': 10,
                    'onChangedCb': (value) {
                      setState(() {
                        _minuteInterval = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'secondInterval:',
                paramValue: '$_secondInterval',
                groupValue: _secondInterval,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondInterval = value;
                      });
                    },
                  },
                  {
                    'name': '6',
                    'value': 6,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondInterval = value;
                      });
                    },
                  },
                  {
                    'name': '10',
                    'value': 10,
                    'onChangedCb': (value) {
                      setState(() {
                        _secondInterval = value;
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
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) => Container(
                    height: 300,
                    child: CupertinoTimerPicker(
                      alignment: _alignment,
                      mode: _mode,
                      backgroundColor: _backgroundColor,
                      minuteInterval: _minuteInterval,
                      secondInterval: _secondInterval,
                      onTimerDurationChanged: (Duration value) {},
                    ),
                  ),
                );
              },
              child: const Text('CupertinoTimerPicker'),
            ),
          ),
        ),
      ],
    );
  }
}
