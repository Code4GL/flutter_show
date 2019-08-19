import 'package:flutter/material.dart';
import 'dart:math';

class ColorUtil {

  /// 随机颜色生成
  static Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256) + 0,
        Random().nextInt(256) + 0, Random().nextInt(256) + 0);
  }

}
