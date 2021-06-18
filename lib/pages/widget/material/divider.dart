import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class DividerPage extends StatefulWidget {
  @override
  _DividerPageState createState() => _DividerPageState();
}

class _DividerPageState extends State<DividerPage> {
  Color _color = Colors.green;
  double _height = 10.0;
  double _thickness = 2.0;
  double _indent = 10.0;
  double _endIndent = 10.0;
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
                '在材料设计语言中，这代表一个分隔符。分隔符可用于列表、抽屉和其他地方来分隔内容。要在ListTile项之间创建分隔线，请考虑使用针对这种情况优化的ListTile.divideTiles。',
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
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'height:',
                paramValue: '$_height',
                groupValue: _height,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'thickness:',
                paramValue: '$_thickness',
                groupValue: _thickness,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _thickness = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _thickness = value;
                      });
                    },
                  },
                  {
                    'name': '4.0',
                    'value': 4.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _thickness = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'indent:',
                paramValue: '$_indent',
                groupValue: _indent,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indent = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indent = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indent = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'endIndent:',
                paramValue: '$_endIndent',
                groupValue: _endIndent,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _endIndent = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _endIndent = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _endIndent = value;
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
          height: 300,
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
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: const Center(
                      child: Text('Above'),
                    ),
                  ),
                ),
                Divider(
                  height: _height,
                  thickness: _thickness,
                  indent: _indent,
                  endIndent: _endIndent,
                  color: _color,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Subheader',
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.primary,
                    child: const Center(
                      child: Text('Below'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
