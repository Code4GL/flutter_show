import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CustomSingleChildLayoutPage extends StatefulWidget {
  @override
  _CustomSingleChildLayoutPageState createState() =>
      _CustomSingleChildLayoutPageState();
}

class _CustomSingleChildLayoutPageState
    extends State<CustomSingleChildLayoutPage> {
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
                '当要求布局时，CustomSingleChildLayout首先调用getSize及其传入的约束来确定其大小。然后它调用getConstraintsForChild来确定要应用于子级的约束。在孩子完成其布局后，RenderCustomSingleChildLayoutBox调用getPositionForChild来确定孩子的位置。',
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
          child: Center(),
        ),
      ],
    );
  }
}
