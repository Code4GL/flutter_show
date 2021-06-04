import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _controller = PageController(initialPage: 0);
  bool _reverse = false;
  Axis _scrollDirection = Axis.horizontal;
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
                '一个实现页面滑动切换的Widget，通常是使用PageController来控制滑动，以实现个性化的滑动切换。',
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
                paramKey: 'reverse:',
                paramValue: '$_reverse',
                value: _reverse,
                onChangedCb: (bool value) {
                  setState(() {
                    _reverse = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'scrollDirection:',
                paramValue: '$_scrollDirection',
                groupValue: _scrollDirection,
                items: [
                  {
                    'name': 'horizontal',
                    'value': Axis.horizontal,
                    'onChangedCb': (value) {
                      setState(() {
                        _scrollDirection = value;
                      });
                    },
                  },
                  {
                    'name': 'vertical',
                    'value': Axis.vertical,
                    'onChangedCb': (value) {
                      setState(() {
                        _scrollDirection = value;
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
            child: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              scrollDirection: _scrollDirection,
              reverse: _reverse,
              controller: _controller,
              children: <Widget>[
                Container(
                  color: Colors.blue[300],
                  child: Center(
                    child: Text('First Page'),
                  ),
                ),
                Container(
                  color: Colors.orange[300],
                  child: Center(
                    child: Text('Second Page'),
                  ),
                ),
                Container(
                  color: Colors.purple[300],
                  child: Center(
                    child: Text('Third Page'),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
