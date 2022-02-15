import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class SyncfusionFlutterChartsPage extends StatefulWidget {
  @override
  _SyncfusionFlutterChartsPageState createState() =>
      _SyncfusionFlutterChartsPageState();
}

class _SyncfusionFlutterChartsPageState
    extends State<SyncfusionFlutterChartsPage> {
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
                'Flutter Charts包是一个用Dart原生编写的数据可视化库，用于创建美观、动画和高性能的图表，用于使用Flutter制作高质量的移动应用程序用户界面。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
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
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SyncfusionFlutterChartsExamplePage();
                    },
                  ),
                );
              },
              child: Text('ExamplePage'),
            ),
          ),
        ),
      ],
    );
  }
}
