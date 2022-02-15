import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class StyledWidgetPage extends StatefulWidget {
  @override
  _StyledWidgetPageState createState() => _StyledWidgetPageState();
}

class _StyledWidgetPageState extends State<StyledWidgetPage> {
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
                'styled_widget被构建为一种工具，可增强您的Flutter开发体验并与您的代码库无缝集成。由于Dart2.7.0中引入了扩展方法，styled_widget使得构建小部件树的可读性和效率更高。',
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
                      return StyledWidgetExamplePage();
                    },
                  ),
                );
              },
              child: Text('FlutterNeumorphicExamplePage'),
            ),
          ),
        ),
      ],
    );
  }
}
