import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class LongPressDraggablePage extends StatefulWidget {
  @override
  _LongPressDraggablePageState createState() => _LongPressDraggablePageState();
}

class _LongPressDraggablePageState extends State<LongPressDraggablePage> {
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
                '这是一个长按后可拖动Widget,使用方式和Draggable类似。',
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
          height: 200,
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
            child: LongPressDraggable(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(child: Text('LongPress and Draggable')),
              ),
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.blue[100],
                child: Text('feedback'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
