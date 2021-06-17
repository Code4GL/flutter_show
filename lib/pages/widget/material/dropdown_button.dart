import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class DropdownButtonPage extends StatefulWidget {
  @override
  _DropdownButtonPageState createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  String _dropdownValue = 'One';
  Color _dropdownColor = Colors.white;
  double _iconSize = 20.0;
  Color _iconEnabledColor = Colors.black;
  bool _isDense = false;
  bool _isExpanded = false;
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
                '给定菜单中的所有条目必须表示具有一致类型的值。通常，使用枚举。items中的每个DropdownMenuItem必须使用相同的类型参数进行处理。',
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
                paramKey: 'dropdownColor:',
                paramValue:
                    '#${_dropdownColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _dropdownColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _dropdownColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _dropdownColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _dropdownColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'iconSize:',
                paramValue: '$_iconSize',
                groupValue: _iconSize,
                items: [
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconSize = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconSize = value;
                      });
                    },
                  },
                  {
                    'name': '40.0',
                    'value': 40.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconSize = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'iconEnabledColor:',
                paramValue:
                    '#${_iconEnabledColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _iconEnabledColor,
                items: [
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconEnabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconEnabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _iconEnabledColor = value;
                      });
                    },
                  },
                ],
              ),
              BooleanParam(
                paramKey: 'isDense:',
                paramValue: '$_isDense',
                value: _isDense,
                onChangedCb: (bool value) {
                  setState(() {
                    _isDense = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'isExpanded:',
                paramValue: '$_isExpanded',
                value: _isExpanded,
                onChangedCb: (bool value) {
                  setState(() {
                    _isExpanded = value;
                  });
                },
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
            child: DropdownButton<String>(
              value: _dropdownValue,
              dropdownColor: _dropdownColor,
              icon: Icon(Icons.arrow_downward),
              iconSize: _iconSize,
              iconEnabledColor: _iconEnabledColor,
              isDense: _isDense,
              isExpanded: _isExpanded,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  _dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
