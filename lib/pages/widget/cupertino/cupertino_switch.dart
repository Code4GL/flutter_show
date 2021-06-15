import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoSwitchPage extends StatefulWidget {
  @override
  _CupertinoSwitchPageState createState() => _CupertinoSwitchPageState();
}

class _CupertinoSwitchPageState extends State<CupertinoSwitchPage> {
  bool _lights = false;
  Color _activeColor = Colors.green;
  Color _trackColor = Colors.grey;
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
                'IOS风格的开关widget。',
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
                paramKey: 'trackColor:',
                paramValue:
                    '#${_trackColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _trackColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _trackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'lime',
                    'value': Colors.lime,
                    'onChangedCb': (value) {
                      setState(() {
                        _trackColor = value;
                      });
                    },
                  },
                  {
                    'name': 'teal',
                    'value': Colors.teal,
                    'onChangedCb': (value) {
                      setState(() {
                        _trackColor = value;
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
            child: MergeSemantics(
              child: ListTile(
                title: const Text('Lights'),
                trailing: CupertinoSwitch(
                  value: _lights,
                  activeColor: _activeColor,
                  trackColor: _trackColor,
                  onChanged: (bool value) {
                    setState(() {
                      _lights = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _lights = !_lights;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
