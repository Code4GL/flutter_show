import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CupertinoContextMenuPage extends StatefulWidget {
  @override
  _CupertinoContextMenuPageState createState() =>
      _CupertinoContextMenuPageState();
}

class _CupertinoContextMenuPageState extends State<CupertinoContextMenuPage> {
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
                '全屏预览模态widget，通过长按可以将目标在全屏中展示，同时还可以通过actions附带许多操作。',
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
            child: SizedBox(
              width: 100,
              height: 100,
              child: CupertinoContextMenu(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text('Long Press'),
                ),
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    child: const Text('Action one'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    child: const Text('Action two'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
