import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class BaselinePage extends StatefulWidget {
  @override
  _BaselinePageState createState() => _BaselinePageState();
}

class _BaselinePageState extends State<BaselinePage> {
  double _baseline = 50.0;
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
                '根据子项的基线对它们的位置进行定位的widget。即子元素的基线到Baseline组件顶部的距离为baseline数值。如果child有baseline，则根据child的baseline属性，调整child的位置；如果child没有baseline，则根据child的bottom，来调整child的位置。',
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
                paramKey: 'baseline:',
                paramValue: '$_baseline',
                groupValue: _baseline,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _baseline = value;
                      });
                    },
                  },
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _baseline = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': 100.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _baseline = value;
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
            child: Row(
              children: [
                Baseline(
                  baseline: _baseline,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'hello',
                    style: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.purple[100],
                    ),
                  ),
                ),
                Baseline(
                  baseline: _baseline,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green[300],
                  ),
                ),
                Baseline(
                  baseline: _baseline,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'world',
                    style: TextStyle(
                      fontSize: 50,
                      backgroundColor: Colors.blue[100],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
