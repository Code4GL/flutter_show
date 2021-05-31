import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class ColumnPage extends StatefulWidget {
  @override
  _ColumnPageState createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  VerticalDirection _verticalDirection = VerticalDirection.down;
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
                'Column作为Flex的一个子类，是flex布局中主轴为纵轴的具体实现。使用过程中最常见的问题是：当传入的垂直约束为无限大时，就会报运行时异常。当出现这样的问题时，要么解决无限垂直约束，要么就使用类似ListView等组件来替换Column。',
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
              RadioParam(
                paramKey: 'verticalDirection:',
                paramValue: '$_verticalDirection',
                groupValue: _verticalDirection,
                items: [
                  {
                    'name': 'down',
                    'value': VerticalDirection.down,
                    'onChangedCb': (value) {
                      setState(() {
                        _verticalDirection = value;
                      });
                    },
                  },
                  {
                    'name': 'up',
                    'value': VerticalDirection.up,
                    'onChangedCb': (value) {
                      setState(() {
                        _verticalDirection = value;
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
            child: Column(
              crossAxisAlignment: _crossAxisAlignment,
              verticalDirection: _verticalDirection,
              children: <Widget>[
                const Text('We move under cover and we move as one'),
                const Text(
                    'Through the night, we have one shot to live another day'),
                const Text('We cannot let a stray gunshot give us away'),
                const Text(
                    'We will fight up close, seize the moment and stay in it'),
                const Text(
                    'It’s either that or meet the business end of a bayonet'),
                const Text('The code word is ‘Rochambeau,’ dig me?'),
                Text('Rochambeau!',
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 2.0)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
