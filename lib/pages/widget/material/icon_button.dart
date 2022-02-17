import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class IconButtonPage extends StatefulWidget {
  @override
  _IconButtonPageState createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  static Function press = () => {};
  void Function()? _onPressed;
  bool _enableFeedback = true;
  Color _color = Colors.green;
  Color _disabledColor = Colors.grey;
  Color _splashColor = Colors.indigo;
  double _iconSize = 20.0;
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
                '图标按钮不支持指定背景颜色或其他背景装饰，因为通常图标只是显示在父小部件的背景之上。使用Ink小部件创建带有填充背景的图标按钮非常容易。Ink小部件在底层Material上呈现装饰以及后代小部件提供的飞溅和高亮InkResponse。',
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
                paramKey: 'onPressed:',
                paramValue: '',
                groupValue: _onPressed,
                items: [
                  {
                    'name': 'null',
                    'value': null,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                  {
                    'name': 'function',
                    'value': press,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                ],
              ),
              BooleanParam(
                paramKey: 'enableFeedback:',
                paramValue: '$_enableFeedback',
                value: _enableFeedback,
                onChangedCb: (bool value) {
                  setState(() {
                    _enableFeedback = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'color:',
                paramValue: '',
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
                paramKey: 'disabledColor:',
                paramValue:
                    '#${_disabledColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _disabledColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _disabledColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'splashColor:',
                paramValue:
                    '#${_splashColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _splashColor,
                items: [
                  {
                    'name': 'indigo',
                    'value': Colors.indigo,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
                      });
                    },
                  },
                  {
                    'name': 'brown',
                    'value': Colors.brown,
                    'onChangedCb': (value) {
                      setState(() {
                        _splashColor = value;
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
            child: IconButton(
              enableFeedback: _enableFeedback,
              color: _color,
              disabledColor: _disabledColor,
              iconSize: _iconSize,
              onPressed: _onPressed,
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
            ),
          ),
        ),
      ],
    );
  }
}
