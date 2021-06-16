import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class TabPageSelectorPage extends StatefulWidget {
  @override
  _TabPageSelectorPageState createState() => _TabPageSelectorPageState();
}

class _TabPageSelectorPageState extends State<TabPageSelectorPage>
    with SingleTickerProviderStateMixin {
  Color _color = Colors.blue;
  Color _selectedColor = Colors.pink;
  double _indicatorSize = 5.0;
  TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
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
                'TabPageSelector是一个选项卡的指示器。通常与TabBarView结合使用。如果未提供TabController，则必须有一个DefaultTabController祖先。',
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
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'selectedColor:',
                paramValue:
                    '#${_selectedColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _selectedColor,
                items: [
                  {
                    'name': 'pink',
                    'value': Colors.pink,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedColor = value;
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
                    'name': '5.0',
                    'value': 5.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorSize = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorSize = value;
                      });
                    },
                  },
                  {
                    'name': '15.0',
                    'value': 15.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _indicatorSize = value;
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
            child: TabPageSelector(
              color: _color,
              selectedColor: _selectedColor,
              indicatorSize: _indicatorSize,
              controller: _tabController,
            ),
          ),
        ),
      ],
    );
  }
}
