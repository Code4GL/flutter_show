import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';

class MaterialAppPage extends StatefulWidget {
  @override
  _MaterialAppPageState createState() => _MaterialAppPageState();
}

class _MaterialAppPageState extends State<MaterialAppPage> {
  bool _debugShowCheckedModeBanner = false;
  bool _debugShowMaterialGrid = false;
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
                'Material设计App的入口，集主题、路由、本地化、主页于一身，本App就是使用MaterialApp作为顶级入口实现的。通常home的实现依赖于Scaffold，同时Scaffold又包含了drawer、body、bottomNavigationBar等来组成一个完整的App。',
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
                paramKey: 'debugShowMaterialGrid:',
                paramValue: '$_debugShowMaterialGrid',
                value: _debugShowMaterialGrid,
                onChangedCb: (bool value) {
                  setState(() {
                    _debugShowMaterialGrid = value;
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
            child: MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Home'),
                ),
              ),
              debugShowCheckedModeBanner: _debugShowCheckedModeBanner,
              debugShowMaterialGrid: _debugShowMaterialGrid,
              showPerformanceOverlay: _showPerformanceOverlay,
              showSemanticsDebugger: _showSemanticsDebugger,
            ),
          ),
        ),
      ],
    );
  }
}
