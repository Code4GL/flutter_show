import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';

class CupertinoDialogActionPage extends StatefulWidget {
  @override
  _CupertinoDialogActionPageState createState() =>
      _CupertinoDialogActionPageState();
}

class _CupertinoDialogActionPageState extends State<CupertinoDialogActionPage> {
  bool _isDefaultAction = false;
  bool _isDestructiveAction = false;
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
                'CupertinoAlertDialog中的按钮类。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 参数配置
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.paramBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '参数配置',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              BooleanParam(
                paramKey: 'isDefaultAction:',
                paramValue: '$_isDefaultAction',
                value: _isDefaultAction,
                onChangedCb: (bool value) {
                  setState(() {
                    _isDefaultAction = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'isDestructiveAction:',
                paramValue: '$_isDestructiveAction',
                value: _isDestructiveAction,
                onChangedCb: (bool value) {
                  setState(() {
                    _isDestructiveAction = value;
                  });
                },
              ),
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
            child: CupertinoAlertDialog(
              title: const Text('Title'),
              content: const Text('Content'),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  child: Text('确认'),
                  isDefaultAction: _isDefaultAction,
                  isDestructiveAction: _isDestructiveAction,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
