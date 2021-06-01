import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  Color _backgroundColor = Colors.grey;
  Color _drawerScrimColor = Colors.grey;
  double _drawerEdgeDragWidth = 10.0;
  bool _drawerEnableOpenDragGesture = true;
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
                'Scaffold被设计为MaterialApp的顶级容器。这意味着向Material应用程序上的每个路由添加Scaffold将为应用程序提供Material的基本视觉布局结构。Scaffold是一个骨架Widget，我们使用它装可以很容易地拼出一个完整的App，它可以包含导航栏、抽屉菜单、底部导航和右下角的悬浮按钮等。虽然Scaffold可以嵌套使用，但尽量避免这种操作。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
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
                paramKey: 'drawerEnableOpenDragGesture:',
                paramValue: '$_drawerEnableOpenDragGesture',
                value: _drawerEnableOpenDragGesture,
                onChangedCb: (bool value) {
                  setState(() {
                    _drawerEnableOpenDragGesture = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'drawerEdgeDragWidth:',
                paramValue: '$_drawerEdgeDragWidth',
                groupValue: _drawerEdgeDragWidth,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerEdgeDragWidth = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerEdgeDragWidth = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerEdgeDragWidth = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'drawerScrimColor:',
                paramValue: '',
                groupValue: _drawerScrimColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerScrimColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerScrimColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _drawerScrimColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'backgroundColor:',
                paramValue:
                    '#${_backgroundColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _backgroundColor,
                items: [
                  {
                    'name': 'grey',
                    'value': Colors.grey,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
                      });
                    },
                  },
                  {
                    'name': 'orange',
                    'value': Colors.orange,
                    'onChangedCb': (value) {
                      setState(() {
                        _backgroundColor = value;
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
          height: 400,
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
              drawerEnableOpenDragGesture: _drawerEnableOpenDragGesture,
              drawerEdgeDragWidth: _drawerEdgeDragWidth,
              drawerScrimColor: _drawerScrimColor,
              backgroundColor: _backgroundColor,
              appBar: AppBar(
                title: Text('AppBar'),
                actions: [
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  IconButton(icon: Icon(Icons.share), onPressed: () {}),
                ],
              ),
              drawer: Drawer(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Close Drawer'),
                  ),
                ),
              ),
              body: Center(
                child: Image(
                  height: 200,
                  width: 300,
                  image: AssetImage('assets/images/basics/app_bar.png'),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {},
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Mine'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
