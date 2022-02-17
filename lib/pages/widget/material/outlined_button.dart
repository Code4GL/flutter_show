import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class OutlinedButtonPage extends StatefulWidget {
  @override
  _OutlinedButtonPageState createState() => _OutlinedButtonPageState();
}

class _OutlinedButtonPageState extends State<OutlinedButtonPage> {
  static Function press = () => {};
  void Function()? _onPressed;
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
                'OutlinedButton本质上是一个带有轮廓边框的TextButton。轮廓按钮是中等重点按钮。它们包含重要的操作，但它们不是应用程序中的主要操作。',
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
              RadioParam(
                paramKey: 'onPressed:',
                paramValue: '',
                groupValue: _onPressed,
                items: [
                  {
                    'name': 'null',
                    'value': null,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                  {
                    'name': 'function',
                    'value': press,
                    'onChangedCb': (value) {
                      setState(() {
                        _onPressed = value;
                      });
                    },
                  },
                ],
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
            child: OutlinedButton(
              onPressed: _onPressed,
              child: const Text('Click Me'),
            ),
          ),
        ),
      ],
    );
  }
}
