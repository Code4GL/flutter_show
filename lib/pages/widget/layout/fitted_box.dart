import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class FittedBoxPage extends StatefulWidget {
  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  double _height = 200.0;
  double _width = 200.0;
  AlignmentGeometry _alignment = Alignment.center;
  Clip _clipBehavior = Clip.none;
  BoxFit _fit = BoxFit.contain;
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
                'FittedBox会在自己的尺寸范围内缩放并且调整child位置，使得child适合其尺寸。',
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
                paramKey: 'height:',
                paramValue: '$_height',
                groupValue: _height,
                items: [
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                  {
                    'name': '400.0',
                    'value': 400.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _height = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'width:',
                paramValue: '$_width',
                groupValue: _width,
                items: [
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                  {
                    'name': '400.0',
                    'value': 400.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _width = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'alignment:',
                paramValue: '',
                groupValue: _alignment,
                items: [
                  {
                    'name': 'center',
                    'value': Alignment.center,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'topRight',
                    'value': Alignment.topRight,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                  {
                    'name': 'bottomRight',
                    'value': Alignment.bottomRight,
                    'onChangedCb': (value) {
                      setState(() {
                        _alignment = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'clipBehavior:',
                paramValue: '',
                groupValue: _clipBehavior,
                items: [
                  {
                    'name': 'none',
                    'value': Clip.none,
                    'onChangedCb': (value) {
                      setState(() {
                        _clipBehavior = value;
                      });
                    },
                  },
                  {
                    'name': 'antiAlias',
                    'value': Clip.antiAlias,
                    'onChangedCb': (value) {
                      setState(() {
                        _clipBehavior = value;
                      });
                    },
                  },
                  {
                    'name': 'hardEdge',
                    'value': Clip.hardEdge,
                    'onChangedCb': (value) {
                      setState(() {
                        _clipBehavior = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'fit:',
                paramValue: '$_fit',
                groupValue: _fit,
                items: [
                  {
                    'name': 'contain',
                    'value': BoxFit.contain,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
                      });
                    },
                  },
                  {
                    'name': 'cover',
                    'value': BoxFit.cover,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
                      });
                    },
                  },
                  {
                    'name': 'fill',
                    'value': BoxFit.fill,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
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
            child: Container(
              height: _height,
              width: _width,
              child: FittedBox(
                alignment: _alignment,
                clipBehavior: _clipBehavior,
                fit: _fit,
                child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
