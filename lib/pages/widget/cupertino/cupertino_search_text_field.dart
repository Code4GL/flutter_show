import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoSearchTextFieldPage extends StatefulWidget {
  @override
  _CupertinoSearchTextFieldPageState createState() =>
      _CupertinoSearchTextFieldPageState();
}

class _CupertinoSearchTextFieldPageState
    extends State<CupertinoSearchTextFieldPage> {
  TextEditingController _textController;
  Color _backgroundColor = Colors.grey[300];
  Color _itemColor = Colors.grey;
  BorderRadius _borderRadius = BorderRadius.all(Radius.circular(10));
  double _itemSize = 10.0;
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

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
                '一个IOS样式的搜索输入框，可以自定义其颜色，圆角，图标等。',
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
                paramKey: 'backgroundColor:',
                paramValue:
                    '#${_backgroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _backgroundColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey[300],
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
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
                    'name': 'yellow',
                    'value': Colors.yellow,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'borderRadius:',
                paramValue: '',
                groupValue: _borderRadius,
                items: [
                  {
                    'name': '0.0',
                    'value': BorderRadius.all(Radius.circular(0.0)),
                    'onChangedCb': (value) {
                      setState(() {
                        _borderRadius = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': BorderRadius.all(Radius.circular(10.0)),
                    'onChangedCb': (value) {
                      setState(() {
                        _borderRadius = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': BorderRadius.all(Radius.circular(20.0)),
                    'onChangedCb': (value) {
                      setState(() {
                        _borderRadius = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'itemColor:',
                paramValue:
                    '#${_itemColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _itemColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemColor = value;
                      });
                    },
                  },
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemColor = value;
                      });
                    },
                  },
                  {
                    'name': 'yellow',
                    'value': Colors.yellow,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'itemSize:',
                paramValue: '$_itemSize',
                groupValue: _itemSize,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemSize = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemSize = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _itemSize = value;
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
            child: CupertinoSearchTextField(
              backgroundColor: _backgroundColor,
              borderRadius: _borderRadius,
              itemColor: _itemColor,
              itemSize: _itemSize,
              controller: _textController,
              onChanged: (String value) {
                print('The text has changed to: $value');
              },
              onSubmitted: (String value) {
                print('Submitted text: $value');
              },
            ),
          ),
        ),
      ],
    );
  }
}
