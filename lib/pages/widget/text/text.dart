import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  int _maxLines = 1; // 最大行
  TextOverflow _overflow = TextOverflow.clip; // 文本溢出
  TextAlign _textAlign = TextAlign.start; // 对齐方式
  bool _softWrap = true; // 中断换行
  double _textScaleFactor = 1.0; // 字体放大倍数
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
                '一个显示具有单个样式的文本字符串。该字符串可能会跨越多行，也可能全部显示在同一行上，具体取决于布局约束。style参数是可选的。省略时，文本将使用最接近的封闭DefaultTextStyle的样式。如果给定样式的TextStyle.inherit属性为true（默认值），则给定样式将与最接近的封闭DefaultTextStyle合并。',
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
                paramKey: 'softWrap:',
                paramValue: '$_softWrap',
                value: _softWrap,
                onChangedCb: (bool value) {
                  setState(() {
                    _softWrap = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'maxLines:',
                paramValue: '$_maxLines',
                groupValue: _maxLines,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxLines = value;
                      });
                    },
                  },
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
                    'name': '10',
                    'value': 10,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxLines = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'overflow:',
                paramValue: '$_overflow',
                groupValue: _overflow,
                items: [
                  {
                    'name': 'clip',
                    'value': TextOverflow.clip,
                    'onChangedCb': (value) {
                      setState(() {
                        _overflow = value;
                      });
                    },
                  },
                  {
                    'name': 'ellipsis',
                    'value': TextOverflow.ellipsis,
                    'onChangedCb': (value) {
                      setState(() {
                        _overflow = value;
                      });
                    },
                  },
                  {
                    'name': 'fade',
                    'value': TextOverflow.fade,
                    'onChangedCb': (value) {
                      setState(() {
                        _overflow = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'textAlign:',
                paramValue: '$_textAlign',
                groupValue: _textAlign,
                items: [
                  {
                    'name': 'start',
                    'value': TextAlign.start,
                    'onChangedCb': (value) {
                      setState(() {
                        _textAlign = value;
                      });
                    },
                  },
                  {
                    'name': 'center',
                    'value': TextAlign.center,
                    'onChangedCb': (value) {
                      setState(() {
                        _textAlign = value;
                      });
                    },
                  },
                  {
                    'name': 'end',
                    'value': TextAlign.end,
                    'onChangedCb': (value) {
                      setState(() {
                        _textAlign = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'textScaleFactor:',
                paramValue: '$_textScaleFactor',
                groupValue: _textScaleFactor,
                items: [
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _textScaleFactor = value;
                      });
                    },
                  },
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _textScaleFactor = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _textScaleFactor = value;
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
            child: Text(
              '一个显示具有单个样式的文本字符串。该字符串可能会跨越多行，也可能全部显示在同一行上，具体取决于布局约束。style参数是可选的。省略时，文本将使用最接近的封闭DefaultTextStyle的样式。如果给定样式的TextStyle.inherit属性为true（默认值），则给定样式将与最接近的封闭DefaultTextStyle合并。',
              overflow: _overflow,
              maxLines: _maxLines,
              textAlign: _textAlign,
              softWrap: _softWrap,
              textScaleFactor: _textScaleFactor,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
