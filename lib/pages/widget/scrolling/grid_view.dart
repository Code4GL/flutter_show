import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  bool _reverse = false;
  int _crossAxisCount = 2;
  EdgeInsetsGeometry _padding = EdgeInsets.all(10);
  double _crossAxisSpacing = 10.0;
  double _mainAxisSpacing = 10.0;
  double _childAspectRatio = 1.0;
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
                'GridView可以构建一个二维网格列表，唯一需要关注的是gridDelegate参数，类型是SliverGridDelegate，它的作用是控制GridView子组件如何排列。SliverGridDelegate是一个抽象类，定义了GridView Layout相关接口，子类需要通过实现它们来实现具体的布局算法。Flutter中提供了两个SliverGridDelegate的子类SliverGridDelegateWithFixedCrossAxisCount和SliverGridDelegateWithMaxCrossAxisExtent，分别对应的构造函数为GridView.count()和GridView.extent()。',
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
                paramKey: 'crossAxisCount:',
                paramValue: '$_crossAxisCount',
                groupValue: _crossAxisCount,
                items: [
                  {
                    'name': '2',
                    'value': 2,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisCount = value;
                      });
                    },
                  },
                  {
                    'name': '3',
                    'value': 3,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisCount = value;
                      });
                    },
                  },
                  {
                    'name': '4',
                    'value': 4,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisCount = value;
                      });
                    },
                  },
                ],
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
                paramKey: 'crossAxisSpacing:',
                paramValue: '$_crossAxisSpacing',
                groupValue: _crossAxisSpacing,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisSpacing = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'mainAxisSpacing:',
                paramValue: '$_mainAxisSpacing',
                groupValue: _mainAxisSpacing,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _mainAxisSpacing = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'childAspectRatio:',
                paramValue: '$_childAspectRatio',
                groupValue: _childAspectRatio,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _childAspectRatio = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _childAspectRatio = value;
                      });
                    },
                  },
                  {
                    'name': '1.5',
                    'value': 1.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _childAspectRatio = value;
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
            child: GridView.count(
              primary: false,
              padding: _padding,
              crossAxisCount: _crossAxisCount,
              reverse: _reverse,
              crossAxisSpacing: _crossAxisSpacing,
              mainAxisSpacing: _mainAxisSpacing,
              childAspectRatio: _childAspectRatio,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Sound of screams but the'),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Who scream'),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
