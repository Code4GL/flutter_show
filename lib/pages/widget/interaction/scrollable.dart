import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class ScrollablePage extends StatefulWidget {
  @override
  _ScrollablePageState createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage> {
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
                '通常我们不直接使用Scrollable，而是使用ListView或GridView来构建长列表。如果想要实现组合布局，请考虑使用CustomScrollView。同时还可以使用ScrollController来控制滚动。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
