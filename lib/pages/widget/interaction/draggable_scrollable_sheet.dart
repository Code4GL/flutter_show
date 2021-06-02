import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class DraggableScrollableSheetPage extends StatefulWidget {
  @override
  _DraggableScrollableSheetPageState createState() =>
      _DraggableScrollableSheetPageState();
}

class _DraggableScrollableSheetPageState
    extends State<DraggableScrollableSheetPage> {
  bool _expand = true;
  double _initialChildSize = 0.5;
  double _maxChildSize = 1.0;
  double _minChildSize = 0.2;
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
                '可拖拽的滚动布局Widget，默认情况下此Widget将填充父级中的所有可用空间。',
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
                paramKey: 'expand:',
                paramValue: '$_expand',
                value: _expand,
                onChangedCb: (bool value) {
                  setState(() {
                    _expand = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'initialChildSize:',
                paramValue: '$_initialChildSize',
                groupValue: _initialChildSize,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _initialChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '0.7',
                    'value': 0.7,
                    'onChangedCb': (value) {
                      setState(() {
                        _initialChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _initialChildSize = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'maxChildSize:',
                paramValue: '$_maxChildSize',
                groupValue: _maxChildSize,
                items: [
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '0.8',
                    'value': 0.8,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '0.6',
                    'value': 0.6,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxChildSize = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'minChildSize:',
                paramValue: '$_minChildSize',
                groupValue: _minChildSize,
                items: [
                  {
                    'name': '0.2',
                    'value': 0.2,
                    'onChangedCb': (value) {
                      setState(() {
                        _minChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '0.3',
                    'value': 0.3,
                    'onChangedCb': (value) {
                      setState(() {
                        _minChildSize = value;
                      });
                    },
                  },
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _minChildSize = value;
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
            child: DraggableScrollableSheet(
              expand: _expand,
              initialChildSize: _initialChildSize,
              maxChildSize: _maxChildSize,
              minChildSize: _minChildSize,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('Item $index'));
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
