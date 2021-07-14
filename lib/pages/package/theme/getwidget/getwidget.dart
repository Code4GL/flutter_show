import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class GetwidgetPage extends StatefulWidget {
  @override
  _GetwidgetPageState createState() => _GetwidgetPageState();
}

class _GetwidgetPageState extends State<GetwidgetPage> {
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
                'GetWidget是一个100%免费的Flutter开源UI库，使用Flutter SDK构建，使Flutter开发比以往任何时候都更容易、更快乐。GetWidget拥有1000多个预构建小部件，您可以重复使用它们来开发Flutter移动应用程序和Web应用程序。我们的座右铭是为Flutter社区提供最好的Flutter UI库，以加快他们的开发过程并使用预先构建的Flutter库组件构建出色的应用程序。',
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
                      return GetwidgetExamplePage();
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
