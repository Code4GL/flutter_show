import 'package:flutter/material.dart';

class MyStyle {
  static FontWeight titleFontWeight = FontWeight.bold; // 标题加粗
  static double titleFontSize = 15; // 标题字号
  static Color titleColor = Colors.blue; // 标题颜色
  static Color componentColor = Colors.blue; // 组件的颜色
  static BorderRadius borderRadius = BorderRadius.circular(5); // 圆角

  // 使用场景样式
  static Color scenesBgColor = Colors.amber[100]; // 背景颜色
  static Color scenesContentColor = Colors.black54; // 内容颜色
  static double scenesContentFontSize = 12; // 内容字号

  // 参数配置样式
  static Color paramBgColor = Colors.grey[300]; // 背景颜色
  static Color paramKeyColor = Colors.purple; // 内容键的颜色
  static Color paramValueColor = Colors.black54; // 内容值的颜色
  static double paramKeyFontSize = 12; // 内容键的字号
  static double paramValueFontSize = 12; // 内容值的字号

  // 展示区域
  static Color displayAreaShadowColor = Colors.purple.withOpacity(0.2); // 阴影的颜色
  static double displayAreaBlurRadius = 12; // 投影距离，有模糊效果
  static double displayAreaSpreadRadius = 0; // 扩展距离，无模糊效果
}
