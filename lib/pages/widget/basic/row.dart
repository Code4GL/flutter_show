import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class RowPage extends StatefulWidget {
  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
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
                'Column作为Flex的一个子类，是flex布局中主轴为横轴的具体实现。如果一行内容宽度加在一起超过了本行宽度，就会报出宽度溢出异常，解决方法就是将其中宽度可以灵活调整的内容包含在Expanded或Flexible中。',
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
                paramKey: 'mainAxisAlignment:',
                paramValue: '',
                groupValue: _mainAxisAlignment,
                items: [
                  {
                    'name': 'start',
                    'value': MainAxisAlignment.start,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'spaceAround',
                    'value': MainAxisAlignment.spaceAround,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'end',
                    'value': MainAxisAlignment.end,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisAlignment = value;
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
                    'value': CrossAxisAlignment.start,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'center',
                    'value': CrossAxisAlignment.center,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
                      });
                    },
                  },
                  {
                    'name': 'end',
                    'value': CrossAxisAlignment.end,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisAlignment = value;
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
            child: Row(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              children: const <Widget>[
                Text('Deliver features faster', textAlign: TextAlign.center),
                Text('Craft beautiful UIs', textAlign: TextAlign.center),
                FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: FlutterLogo(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
