import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class AlignPage extends StatefulWidget {
  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  AlignmentGeometry _alignment = Alignment.center;
  double _heightFactor = 1.0;
  double _widthFactor = 1.0;
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
                'Align组件可以调整子组件的位置，并且可以根据子组件的宽高来确定自身的的宽高。当widthFactor和heightFactor为空时，且具有父约束时，它的大小由父约束控制，无父约束时，它的大小由子组件控制；当widthFactor和heightFactor为不空时，它的大小则是子组件和大小因子的乘积。',
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
                paramKey: 'heightFactor:',
                paramValue: '$_heightFactor',
                groupValue: _heightFactor,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _heightFactor = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _heightFactor = value;
                      });
                    },
                  },
                  {
                    'name': '1.5',
                    'value': 1.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _heightFactor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'widthFactor:',
                paramValue: '$_widthFactor',
                groupValue: _widthFactor,
                items: [
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _widthFactor = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _widthFactor = value;
                      });
                    },
                  },
                  {
                    'name': '1.5',
                    'value': 1.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _widthFactor = value;
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
              color: Colors.blue[50],
              child: Align(
                heightFactor: _heightFactor,
                widthFactor: _widthFactor,
                alignment: _alignment,
                child: FlutterLogo(size: 100),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
