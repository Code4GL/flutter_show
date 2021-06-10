import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class ExpandedPage extends StatefulWidget {
  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  int _flex1 = 1;
  int _flex2 = 1;
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
                '使用Expanded小部件可以使Row、Column或Flex的子项扩展以填充沿主轴的可用空间。如果扩展了多个子项，则根据弹性系数在它们之间分配可用空间。Expanded小部件必须是Row、Column或Flex的后代，并且从Expanded小部件到其封闭的Row、Column或Flex的路径必须仅包含StatelessWidgets或StatefulWidgets（而不是其他类型的小部件，如RenderObjectWidgets）。',
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
                paramKey: 'flex1:',
                paramValue: '$_flex1',
                groupValue: _flex1,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex1 = value;
                      });
                    },
                  },
                  {
                    'name': '2',
                    'value': 2,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex1 = value;
                      });
                    },
                  },
                  {
                    'name': '3',
                    'value': 3,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex1 = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'flex2:',
                paramValue: '$_flex2',
                groupValue: _flex2,
                items: [
                  {
                    'name': '1',
                    'value': 1,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex2 = value;
                      });
                    },
                  },
                  {
                    'name': '2',
                    'value': 2,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex2 = value;
                      });
                    },
                  },
                  {
                    'name': '3',
                    'value': 3,
                    'onChangedCb': (value) {
                      setState(() {
                        _flex2 = value;
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
              children: <Widget>[
                Expanded(
                  flex: _flex1,
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    child: Center(child: Text('Expanded1')),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                  child: Center(child: Text('Container')),
                ),
                Expanded(
                  flex: _flex2,
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    child: Center(child: Text('Expanded2')),
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
