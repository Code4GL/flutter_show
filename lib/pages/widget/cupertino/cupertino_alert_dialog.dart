import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CupertinoAlertDialogPage extends StatefulWidget {
  @override
  _CupertinoAlertDialogPageState createState() =>
      _CupertinoAlertDialogPageState();
}

class _CupertinoAlertDialogPageState extends State<CupertinoAlertDialogPage> {
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
                'IOS风格Dialog弹窗,通常结合showCupertinoDialog()方法实现弹框。',
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
                showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Title'),
                    content: const Text('Content'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: Text('取消'),
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text('确认'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
              child: const Text('CupertinoAlertDialog'),
            ),
          ),
        ),
      ],
    );
  }
}
