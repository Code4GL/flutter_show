import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  bool _reverse = false;
  EdgeInsetsGeometry _padding = EdgeInsets.all(10);
  Axis _scrollDirection = Axis.vertical;
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
                'ListView是最常用的可滚动组件之一，它可以沿一个方向线性排布所有子组件，并且它也支持基于Sliver的延迟构建模型。ListView.builder适合列表项比较多（或者无限）的情况，因为只有当子组件真正显示的时候才会被创建，也就说通过该构造函数创建的ListView是支持基于Sliver的懒加载模型的。ListView.separated可以在生成的列表项之间添加一个分割组件，它比ListView.builder多了一个separatorBuilder参数，该参数是一个分割组件生成器。如果需要自定义列表项生成模型，可以通过ListView.custom来自定义，它需要实现一个SliverChildDelegate用来给ListView生成列表项组件。',
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
                paramKey: 'padding:',
                paramValue: '$_padding',
                groupValue: _padding,
                items: [
                  {
                    'name': '10.0',
                    'value': EdgeInsets.all(10.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': EdgeInsets.all(20.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': EdgeInsets.all(30.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'scrollDirection:',
                paramValue: '$_scrollDirection',
                groupValue: _scrollDirection,
                items: [
                  {
                    'name': 'vertical',
                    'value': Axis.vertical,
                    'onChangedCb': (value) {
                      setState(() {
                        _scrollDirection = value;
                      });
                    },
                  },
                  {
                    'name': 'horizontal',
                    'value': Axis.horizontal,
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
            child: ListView(
              scrollDirection: _scrollDirection,
              padding: _padding,
              reverse: _reverse,
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
