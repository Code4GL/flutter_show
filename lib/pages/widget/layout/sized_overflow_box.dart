import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class SizedOverflowBoxPage extends StatefulWidget {
  @override
  _SizedOverflowBoxPageState createState() => _SizedOverflowBoxPageState();
}

class _SizedOverflowBoxPageState extends State<SizedOverflowBoxPage> {
  double _sizeWidth = 200.0;
  double _sizeHeight = 200.0;
  double _height = 200.0;
  double _width = 200.0;
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
                'SizedOverflowBox是SizedBox与OverflowBox的结合体。通过将自身的固定尺寸，传递给child，来达到控制child尺寸的目的；并且可以突破父节点尺寸的限制，超出部分也可以被渲染显示，与OverflowBox类似。',
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
                paramKey: 'sizeWidth:',
                paramValue: '$_sizeWidth',
                groupValue: _sizeWidth,
                items: [
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeWidth = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeWidth = value;
                      });
                    },
                  },
                  {
                    'name': '400.0',
                    'value': 400.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeWidth = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'sizeHeight:',
                paramValue: '$_sizeHeight',
                groupValue: _sizeHeight,
                items: [
                  {
                    'name': '200.0',
                    'value': 200.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeHeight = value;
                      });
                    },
                  },
                  {
                    'name': '300.0',
                    'value': 300.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeHeight = value;
                      });
                    },
                  },
                  {
                    'name': '400.0',
                    'value': 400.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _sizeHeight = value;
                      });
                    },
                  },
                ],
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
            child: SizedOverflowBox(
              size: Size(_sizeWidth, _sizeHeight),
              child: Container(
                color: Color(0x33FF00FF),
                width: _width,
                height: _height,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
