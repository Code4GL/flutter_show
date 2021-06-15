import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class CupertinoTabViewPage extends StatefulWidget {
  @override
  _CupertinoTabViewPageState createState() => _CupertinoTabViewPageState();
}

class _CupertinoTabViewPageState extends State<CupertinoTabViewPage> {
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
                'CupertinoTabView这个和iOS中的View有很大的区别，它其实并不能理解为View。相比于一个视图，它更像是一个控制器，在CupertinoTabView中提供了路由，导航等功能，同时他也可以根据不同选项卡的下标提供不同的页面。这些导航属性不与任何同级CupertinoTabView或任何祖先或后代Navigator实例共享。',
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
