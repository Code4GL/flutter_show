import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class FlutterSpinkitPage extends StatefulWidget {
  @override
  _FlutterSpinkitPageState createState() => _FlutterSpinkitPageState();
}

class _FlutterSpinkitPageState extends State<FlutterSpinkitPage> {
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
                '一组带有颤动动画的加载指示器。',
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
                      return FlutterSpinkitExamplePage();
                    },
                  ),
                );
              },
              child: Text('FlutterSpinkitExamplePage'),
            ),
          ),
        ),
      ],
    );
  }
}
