import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  bool _enableFeedback = false;
  bool _isScrollable = false;
  double _indicatorWeight = 2.0;
  Color _indicatorColor = Colors.pink;
  TabBarIndicatorSize _indicatorSize = TabBarIndicatorSize.tab;
  Color _labelColor = Colors.pink;
  Color _unselectedLabelColor = Colors.white;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
                '通常实现于AppBar.bottom并与TabBarView结合使用。要求其祖先之一是Material小部件。',
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
                paramKey: 'enableFeedback:',
                paramValue: '$_enableFeedback',
                value: _enableFeedback,
                onChangedCb: (bool value) {
                  setState(() {
                    _enableFeedback = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'isScrollable:',
                paramValue: '$_isScrollable',
                value: _isScrollable,
                onChangedCb: (bool value) {
                  setState(() {
                    _isScrollable = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'indicatorColor:',
                paramValue:
                    '#${_indicatorColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _indicatorColor,
                items: [
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorColor = value;
                      });
                    },
                  },
                  {
                    'name': 'brown',
                    'value': Colors.brown,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'indicatorSize:',
                paramValue: '$_indicatorSize',
                groupValue: _indicatorSize,
                items: [
                  {
                    'name': 'tab',
                    'value': TabBarIndicatorSize.tab,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorSize = value;
                      });
                    },
                  },
                  {
                    'name': 'label',
                    'value': TabBarIndicatorSize.label,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorSize = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'indicatorWeight:',
                paramValue: '$_indicatorWeight',
                groupValue: _indicatorWeight,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorWeight = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorWeight = value;
                      });
                    },
                  },
                  {
                    'name': '4.0',
                    'value': 4.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorWeight = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'labelColor:',
                paramValue:
                    '#${_labelColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _labelColor,
                items: [
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _labelColor = value;
                      });
                    },
                  },
                  {
                    'name': 'brown',
                    'value': Colors.brown,
                    'onChangedCb': (value) {
                      setState(() {
                        _labelColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _labelColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'unselectedLabelColor:',
                paramValue: '',
                groupValue: _unselectedLabelColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedLabelColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedLabelColor = value;
                      });
                    },
                  },
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _unselectedLabelColor = value;
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
            child: Scaffold(
              appBar: AppBar(
                title: const Text('TabBar Widget'),
                bottom: TabBar(
                  enableFeedback: _enableFeedback,
                  isScrollable: _isScrollable,
                  indicatorColor: _indicatorColor,
                  indicatorSize: _indicatorSize,
                  indicatorWeight: _indicatorWeight,
                  labelColor: _labelColor,
                  unselectedLabelColor: _unselectedLabelColor,
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(icon: Icon(Icons.cloud_outlined)),
                    Tab(icon: Icon(Icons.beach_access_sharp)),
                    Tab(icon: Icon(Icons.brightness_5_sharp)),
                  ],
                ),
              ),
              body: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  Center(
                    child: Text("It's cloudy here"),
                  ),
                  Center(
                    child: Text("It's rainy here"),
                  ),
                  Center(
                    child: Text("It's sunny here"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
