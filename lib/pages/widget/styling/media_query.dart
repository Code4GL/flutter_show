import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class MediaQueryPage extends StatefulWidget {
  @override
  _MediaQueryPageState createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
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
                'MediaQuery必须要在MaterialApp或者WidgetsApp中使用。通常情况下，不会直接使用MediaQuery，而是使用MediaQuery.of获取当前设备的信息，而后根据屏幕信息重新构建UI。',
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
            child: Column(
              children: [
                Text('size:${MediaQuery.of(context).size.toString()}'),
                Text(
                    'devicePixelRatio:${MediaQuery.of(context).devicePixelRatio.toString()}'),
                Text(
                    'platformBrightness:${MediaQuery.of(context).platformBrightness.toString()}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
