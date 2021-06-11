import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CupertinoPageScaffoldPage extends StatefulWidget {
  @override
  _CupertinoPageScaffoldPageState createState() =>
      _CupertinoPageScaffoldPageState();
}

class _CupertinoPageScaffoldPageState extends State<CupertinoPageScaffoldPage> {
  int _count = 0;
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
                'CupertinoPageScaffold是一个IOS样式的骨架Widget，它包含了导航栏及页面的相关内容。',
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
            ],
          ),
        ),
        // 展示区域
        Container(
          height: 300,
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
            child: CupertinoPageScaffold(
              backgroundColor: CupertinoColors.white,
              navigationBar: CupertinoNavigationBar(
                middle: Text('CupertinoPageScaffold'),
              ),
              child: ListView(
                children: <Widget>[
                  CupertinoButton(
                    onPressed: () => setState(() => _count++),
                    child: Icon(CupertinoIcons.add),
                  ),
                  Center(
                    child: Text('You have pressed the button $_count times.'),
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
