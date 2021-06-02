import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/radio_param.dart';

class DismissiblePage extends StatefulWidget {
  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  List<int> _items = List<int>.generate(30, (int index) => index);
  double _crossAxisEndOffset = 100.0;
  DismissDirection _direction = DismissDirection.horizontal;
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
                '列表项滑动删除Widget，可以设置横向或纵向删除。',
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
                paramKey: 'crossAxisEndOffset:',
                paramValue: '$_crossAxisEndOffset',
                groupValue: _crossAxisEndOffset,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisEndOffset = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisEndOffset = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _crossAxisEndOffset = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'direction:',
                paramValue: '',
                groupValue: _direction,
                items: [
                  {
                    'name': 'horizontal',
                    'value': DismissDirection.horizontal,
                    'onChangedCb': (value) {
                      setState(() {
                        _direction = value;
                      });
                    },
                  },
                  {
                    'name': 'vertical',
                    'value': DismissDirection.vertical,
                    'onChangedCb': (value) {
                      setState(() {
                        _direction = value;
                      });
                    },
                  },
                  {
                    'name': 'startToEnd',
                    'value': DismissDirection.startToEnd,
                    'onChangedCb': (value) {
                      setState(() {
                        _direction = value;
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
          height: 500,
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
            child: ListView.builder(
              itemCount: _items.length,
              padding: EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  crossAxisEndOffset: 10.0,
                  direction: _direction,
                  child: ListTile(
                    title: Text(
                      'Item ${_items[index]}',
                    ),
                  ),
                  background: Container(
                    color: Colors.green,
                  ),
                  key: ValueKey<int>(_items[index]),
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      _items.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
