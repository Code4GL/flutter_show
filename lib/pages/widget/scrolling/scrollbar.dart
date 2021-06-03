import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class ScrollbarPage extends StatefulWidget {
  @override
  _ScrollbarPageState createState() => _ScrollbarPageState();
}

class _ScrollbarPageState extends State<ScrollbarPage> {
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
                '',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 参数配置
        // Container(
        //   width: double.infinity,
        //   padding: EdgeInsets.all(5),
        //   decoration: BoxDecoration(
        //     color: MyStyle.paramBgColor,
        //     borderRadius: MyStyle.borderRadius,
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         '参数配置',
        //         style: TextStyle(
        //           color: MyStyle.titleColor,
        //           fontWeight: MyStyle.titleFontWeight,
        //         ),
        //       ),
        //       RadioParam(
        //         paramKey: 'opacity:',
        //         paramValue: '$_opacity',
        //         groupValue: _opacity,
        //         items: [
        //           {
        //             'name': '0.0',
        //             'value': 0.0,
        //             'onChangedCb': (value) {
        //               setState(() {
        //                 _opacity = value;
        //               });
        //             },
        //           },
        //           {
        //             'name': '0.5',
        //             'value': 0.5,
        //             'onChangedCb': (value) {
        //               setState(() {
        //                 _opacity = value;
        //               });
        //             },
        //           },
        //           {
        //             'name': '1.0',
        //             'value': 1.0,
        //             'onChangedCb': (value) {
        //               setState(() {
        //                 _opacity = value;
        //               });
        //             },
        //           },
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
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
