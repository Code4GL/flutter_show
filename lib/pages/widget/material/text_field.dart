import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController _controller;
  bool _showCursor = true;
  Color _cursorColor = Colors.blue;
  double _cursorHeight = 20.0;
  double _cursorWidth = 2.0;
  bool _enabled = true;
  bool _readOnly = false;
  int _maxLines = 1;
  int _minLines = 1;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
                '要将TextField与其他FormField小部件集成到表单中，请考虑使用TextFormField。请记住在不再需要TextEditingController时调用TextEditingController.dispose。这将确保我们丢弃对象使用的任何资源。',
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
                paramKey: 'showCursor:',
                paramValue: '$_showCursor',
                value: _showCursor,
                onChangedCb: (bool value) {
                  setState(() {
                    _showCursor = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'cursorColor:',
                paramValue:
                    '#${_cursorColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _cursorColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorColor = value;
                      });
                    },
                  },
                  {
                    'name': 'brown',
                    'value': Colors.brown,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'cursorHeight:',
                paramValue: '$_cursorHeight',
                groupValue: _cursorHeight,
                items: [
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorHeight = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorHeight = value;
                      });
                    },
                  },
                  {
                    'name': '40.0',
                    'value': 40.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorHeight = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'cursorWidth:',
                paramValue: '$_cursorWidth',
                groupValue: _cursorWidth,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorWidth = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorWidth = value;
                      });
                    },
                  },
                  {
                    'name': '4.0',
                    'value': 4.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _cursorWidth = value;
                      });
                    },
                  },
                ],
              ),
              BooleanParam(
                paramKey: 'enabled:',
                paramValue: '$_enabled',
                value: _enabled,
                onChangedCb: (bool value) {
                  setState(() {
                    _enabled = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'readOnly:',
                paramValue: '$_readOnly',
                value: _readOnly,
                onChangedCb: (bool value) {
                  setState(() {
                    _readOnly = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'maxLines:',
                paramValue: '$_maxLines',
                groupValue: _maxLines,
                items: [
                  {
                    'name': '3',
                    'value': 3,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxLines = value;
                      });
                    },
                  },
                  {
                    'name': '4',
                    'value': 4,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxLines = value;
                      });
                    },
                  },
                  {
                    'name': '5',
                    'value': 5,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxLines = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'minLines:',
                paramValue: '$_minLines',
                groupValue: _minLines,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _minLines = value;
                      });
                    },
                  },
                  {
                    'name': '2',
                    'value': 2,
                    'onChangedCb': (value) {
                      setState(() {
                        _minLines = value;
                      });
                    },
                  },
                  {
                    'name': '3',
                    'value': 3,
                    'onChangedCb': (value) {
                      setState(() {
                        _minLines = value;
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
            child: TextField(
              controller: _controller,
              showCursor: _showCursor,
              cursorColor: _cursorColor,
              cursorHeight: _cursorHeight,
              cursorWidth: _cursorWidth,
              enabled: _enabled,
              readOnly: _readOnly,
              maxLines: _maxLines,
              minLines: _minLines,
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thanks!'),
                      content: Text(
                          'You typed "$value", which has length ${value.characters.length}.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
