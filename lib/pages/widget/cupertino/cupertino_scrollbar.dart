import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class CupertinoScrollbarPage extends StatefulWidget {
  @override
  _CupertinoScrollbarPageState createState() => _CupertinoScrollbarPageState();
}

class _CupertinoScrollbarPageState extends State<CupertinoScrollbarPage> {
  final ScrollController _controller = ScrollController();
  bool _isAlwaysShown = false;
  double _thickness = 1.0;
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
                '这是一个IOS样式的滚动条Widget，使用时将CupertinoScrollbar包裹在ScrollView上。如果滚动条被多个ScrollView包裹，它只会响应最近的scrollView并默认显示相应的滚动条缩略图。',
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
                paramKey: 'isAlwaysShown:',
                paramValue: '$_isAlwaysShown',
                value: _isAlwaysShown,
                onChangedCb: (bool value) {
                  setState(() {
                    _isAlwaysShown = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'thickness:',
                paramValue: '$_thickness',
                groupValue: _thickness,
                items: [
                  {
                    'name': '1.0',
                    'value': 1.0,
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
                    'name': '5.0',
                    'value': 5.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _thickness = value;
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
            child: CupertinoScrollbar(
              isAlwaysShown: _isAlwaysShown,
              thickness: _thickness,
              controller: _controller,
              child: GridView.builder(
                itemCount: 120,
                controller: _controller,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text('item $index'),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
