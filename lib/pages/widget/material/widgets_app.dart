import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';

class WidgetsAppPage extends StatefulWidget {
  @override
  _WidgetsAppPageState createState() => _WidgetsAppPageState();
}

class _WidgetsAppPageState extends State<WidgetsAppPage> {
  bool _debugShowCheckedModeBanner = false;
  bool _showPerformanceOverlay = false;
  bool _showSemanticsDebugger = false;
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
                'WidgetsApp是一个App的顶级入口，MaterialApp和CupertinoApp都使用它来实现应用程序的基本功能。也就是说，WidgetsApp具备二者的公共功能，包含路由、物理键位响应处理、主页和Debug功能等，除过主题风格等类似深度定制的功能。',
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
                paramKey: 'debugShowCheckedModeBanner:',
                paramValue: '$_debugShowCheckedModeBanner',
                value: _debugShowCheckedModeBanner,
                onChangedCb: (bool value) {
                  setState(() {
                    _debugShowCheckedModeBanner = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'showPerformanceOverlay:',
                paramValue: '$_showPerformanceOverlay',
                value: _showPerformanceOverlay,
                onChangedCb: (bool value) {
                  setState(() {
                    _showPerformanceOverlay = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'showSemanticsDebugger:',
                paramValue: '$_showSemanticsDebugger',
                value: _showSemanticsDebugger,
                onChangedCb: (bool value) {
                  setState(() {
                    _showSemanticsDebugger = value;
                  });
                },
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
            child: WidgetsApp(
              color: Colors.blue,
              debugShowCheckedModeBanner: _debugShowCheckedModeBanner,
              showPerformanceOverlay: _showPerformanceOverlay,
              showSemanticsDebugger: _showSemanticsDebugger,
              builder: (BuildContext context, Widget widget) {
                return Center(child: Text('WidgetsApp'));
              },
            ),
          ),
        ),
      ],
    );
  }
}
