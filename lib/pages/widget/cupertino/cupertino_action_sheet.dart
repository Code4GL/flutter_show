import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CupertinoActionSheetPage extends StatefulWidget {
  @override
  _CupertinoActionSheetPageState createState() =>
      _CupertinoActionSheetPageState();
}

class _CupertinoActionSheetPageState extends State<CupertinoActionSheetPage> {
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
                '这是一个操作列表展示widget，通常结合showCupertinoModalPopup()方法实现从屏幕底部向上滑动来显示操作表。',
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
            child: CupertinoButton(
              onPressed: () {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                    title: const Text('Title'),
                    message: const Text('Message'),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        child: const Text('Action One'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: const Text('Action Two'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
              child: const Text('CupertinoActionSheet'),
            ),
          ),
        ),
      ],
    );
  }
}
