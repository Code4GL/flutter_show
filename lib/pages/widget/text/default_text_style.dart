import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class DefaultTextStylePage extends StatefulWidget {
  @override
  _DefaultTextStylePageState createState() => _DefaultTextStylePageState();
}

class _DefaultTextStylePageState extends State<DefaultTextStylePage> {
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
                'DefaultTextStyle是一个特殊的Widget,它并不直接显示文本，而是可以指定一种文本风格，那么它的子孙节点中的Text都可以继承它的文本风格。当没有为Text指定style值时，Text会上溯widget tree，寻找距离自己最近的DefaultTextStyle并继承它指定的文本风格。',
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
            child: Text('This is an unstyled Text!'),
          ),
        ),
      ],
    );
  }
}
