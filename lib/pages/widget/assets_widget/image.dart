import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  double _height = 200.0; // 图片高度
  double _width = 200.0; // 图片宽度
  Color _color = Colors.blue; // 图片混合颜色，与colorBlendMode属性一同使用
  BlendMode _colorBlendMode = BlendMode.dst; // 图片颜色混合方式
  BoxFit _fit = BoxFit.scaleDown; // 图片布局分配方式
  ImageRepeat _repeat = ImageRepeat.noRepeat; // 图片填充方式

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
                'Image有一个必选的image参数，它对应一个ImageProvider。ImageProvider是一个抽象类，主要定义了图片数据获取的接口load()，从不同的数据源获取图片需要实现不同的ImageProvider，如AssetsImage，NetworkImage，FileImage，MemoryImage等均为ImageProvider的子类。',
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
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'red',
                    'value': Colors.red,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'purple',
                    'value': Colors.purple,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'colorBlendMode:',
                paramValue: '$_colorBlendMode',
                groupValue: _colorBlendMode,
                items: [
                  {
                    'name': 'dst',
                    'value': BlendMode.dst,
                    'onChangedCb': (value) {
                      setState(() {
                        _colorBlendMode = value;
                      });
                    },
                  },
                  {
                    'name': 'src',
                    'value': BlendMode.src,
                    'onChangedCb': (value) {
                      setState(() {
                        _colorBlendMode = value;
                      });
                    },
                  },
                  {
                    'name': 'color',
                    'value': BlendMode.color,
                    'onChangedCb': (value) {
                      setState(() {
                        _colorBlendMode = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'fit:',
                paramValue: '',
                groupValue: _fit,
                items: [
                  {
                    'name': 'scaleDown',
                    'value': BoxFit.scaleDown,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
                      });
                    },
                  },
                  {
                    'name': 'fitHeight',
                    'value': BoxFit.fitHeight,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
                      });
                    },
                  },
                  {
                    'name': 'fitWidth',
                    'value': BoxFit.fitWidth,
                    'onChangedCb': (value) {
                      setState(() {
                        _fit = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'repeat:',
                paramValue: '',
                groupValue: _repeat,
                items: [
                  {
                    'name': 'noRepeat',
                    'value': ImageRepeat.noRepeat,
                    'onChangedCb': (value) {
                      setState(() {
                        _repeat = value;
                      });
                    },
                  },
                  {
                    'name': 'repeat',
                    'value': ImageRepeat.repeat,
                    'onChangedCb': (value) {
                      setState(() {
                        _repeat = value;
                      });
                    },
                  },
                  {
                    'name': 'repeatY',
                    'value': ImageRepeat.repeatY,
                    'onChangedCb': (value) {
                      setState(() {
                        _repeat = value;
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
            child: Image(
              height: _height,
              width: _width,
              color: _color,
              colorBlendMode: _colorBlendMode,
              fit: _fit,
              repeat: _repeat,
              image: AssetImage('assets/images/flutter.png'),
            ),
          ),
        ),
      ],
    );
  }
}
