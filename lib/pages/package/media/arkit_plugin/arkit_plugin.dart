import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class ArkitPluginPage extends StatefulWidget {
  @override
  _AudioplayersPageState createState() => _AudioplayersPageState();
}

class _AudioplayersPageState extends State<ArkitPluginPage> {
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
                '在ios文件夹的顶层取消Podfile中第二行的注释，并将iOS最低版本从9.0更改为适当的版本。支持的最低iOS版本为11.0，但如果您需要图像锚点使用11.3，用于图像跟踪配置或面部跟踪设置12.0，对于身体跟踪最低版本必须为13.0。',
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
            child: Platform.isIOS
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return ArkitPluginExamplePage();
                          },
                        ),
                      );
                    },
                    child: Text('ArkitPluginExamplePage'),
                  )
                : Text('Android平台请关注arcore_flutter_plugin'),
          ),
        ),
      ],
    );
  }
}
