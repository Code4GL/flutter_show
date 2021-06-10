import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  WrapAlignment _alignment = WrapAlignment.start;
  WrapCrossAlignment _crossAxisAlignment = WrapCrossAlignment.start;
  double _spacing = 1.0;
  double _runSpacing = 1.0;
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
                'Wrap是一个可以使子控件自动换行的widget，默认的方向是水平的。',
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
                    'name': 'start',
                    'value': WrapAlignment.start,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'center',
                    'value': WrapAlignment.center,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'spaceBetween',
                    'value': WrapAlignment.spaceBetween,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'crossAxisAlignment:',
                paramValue: '',
                groupValue: _crossAxisAlignment,
                items: [
                  {
                    'name': 'start',
                    'value': WrapCrossAlignment.start,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'center',
                    'value': WrapCrossAlignment.center,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'end',
                    'value': WrapCrossAlignment.end,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'spacing:',
                paramValue: '$_spacing',
                groupValue: _spacing,
                items: [
                  {
                    'name': '5.0',
                    'value': 5.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _spacing = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _spacing = value;
                      });
                    },
                  },
                  {
                    'name': '15.0',
                    'value': 15.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _spacing = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'runSpacing:',
                paramValue: '$_runSpacing',
                groupValue: _runSpacing,
                items: [
                  {
                    'name': '5.0',
                    'value': 5.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _runSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _runSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '15.0',
                    'value': 15.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _runSpacing = value;
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
            child: Wrap(
              alignment: _alignment,
              crossAxisAlignment: _crossAxisAlignment,
              spacing: _spacing, // gap between adjacent chips
              runSpacing: _runSpacing, // gap between lines
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('AH')),
                  label: const Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('ML')),
                  label: const Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('HM')),
                  label: const Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue.shade900,
                      child: const Text('JL')),
                  label: const Text('Laurens'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
