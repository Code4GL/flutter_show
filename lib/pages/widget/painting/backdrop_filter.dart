import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class BackdropFilterPage extends StatefulWidget {
  @override
  _BackdropFilterPageState createState() => _BackdropFilterPageState();
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
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
                'BackdropFilter可以用于对背景图片进行高斯模糊设置或者矩阵变换，除了图片以外BackdropFilter还能对任何子widget进行高斯模糊设置。需要注意的是BackdropFilter不是变换背景来实现高斯模糊的效果，而是通过在背景上面盖上一个模糊层从而达到高斯模糊的效果，因此要做模糊的背景图必须要在BackdropFilter底下。它的核心参数是filter，它是个ImageFilter类型，有三个构造函数：高斯模糊、矩阵变换和混合组合。',
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
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Text('0' * 10000),
                Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 200.0,
                        child: Text('Hello World'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
