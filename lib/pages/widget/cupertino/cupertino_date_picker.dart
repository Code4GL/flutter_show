import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoDatePickerPage extends StatefulWidget {
  @override
  _CupertinoDatePickerPageState createState() =>
      _CupertinoDatePickerPageState();
}

class _CupertinoDatePickerPageState extends State<CupertinoDatePickerPage> {
  CupertinoDatePickerMode _mode = CupertinoDatePickerMode.dateAndTime;
  bool _use24hFormat = false;
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
                '这是一个日期时间选择器，通常和showModalBottomSheet()配合使用，实现底部弹框的日期选择器。',
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
                paramKey: 'use24hFormat:',
                paramValue: '$_use24hFormat',
                value: _use24hFormat,
                onChangedCb: (bool value) {
                  setState(() {
                    _use24hFormat = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'mode:',
                paramValue: '',
                groupValue: _mode,
                items: [
                  {
                    'name': 'dateAndTime',
                    'value': CupertinoDatePickerMode.dateAndTime,
                    'onChangedCb': (value) {
                      setState(() {
                        _mode = value;
                      });
                    },
                  },
                  {
                    'name': 'date',
                    'value': CupertinoDatePickerMode.date,
                    'onChangedCb': (value) {
                      setState(() {
                        _mode = value;
                      });
                    },
                  },
                  {
                    'name': 'time',
                    'value': CupertinoDatePickerMode.time,
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
                    child: CupertinoDatePicker(
                      mode: _mode,
                      use24hFormat: _use24hFormat,
                      backgroundColor: _backgroundColor,
                      onDateTimeChanged: (DateTime value) {},
                    ),
                  ),
                );
              },
              child: const Text('CupertinoDatePicker'),
            ),
          ),
        ),
      ],
    );
  }
}
