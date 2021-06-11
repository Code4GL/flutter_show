import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoNavigationBarPage extends StatefulWidget {
  @override
  _CupertinoNavigationBarPageState createState() =>
      _CupertinoNavigationBarPageState();
}

class _CupertinoNavigationBarPageState
    extends State<CupertinoNavigationBarPage> {
  bool _automaticallyImplyLeading = true;
  bool _automaticallyImplyMiddle = true;
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
                'CupertinoNavigationBar是一个IOS样式的工具栏，它至少包含一个小部件，通常是位于工具栏中间的页面标题。它应该被放置在屏幕的顶部并自动考虑操作系统的状态栏。',
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
                paramKey: 'automaticallyImplyLeading:',
                paramValue: '$_automaticallyImplyLeading',
                value: _automaticallyImplyLeading,
                onChangedCb: (bool value) {
                  setState(() {
                    _automaticallyImplyLeading = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'automaticallyImplyMiddle:',
                paramValue: '$_automaticallyImplyMiddle',
                value: _automaticallyImplyMiddle,
                onChangedCb: (bool value) {
                  setState(() {
                    _automaticallyImplyMiddle = value;
                  });
                },
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
                    'name': 'lime',
                    'value': Colors.lime,
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
            child: CupertinoNavigationBar(
              automaticallyImplyLeading: _automaticallyImplyLeading,
              automaticallyImplyMiddle: _automaticallyImplyMiddle,
              backgroundColor: _backgroundColor,
              middle: Text('CupertinoNavigationBar'),
              trailing: CupertinoButton(
                padding: EdgeInsets.all(5),
                onPressed: () {},
                child: Text('trailing'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
