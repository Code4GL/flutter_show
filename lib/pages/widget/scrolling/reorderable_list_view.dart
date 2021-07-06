import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class ReorderableListViewPage extends StatefulWidget {
  @override
  _ReorderableListViewPageState createState() =>
      _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  final List<int> _items = List<int>.generate(50, (int index) => index);
  double _anchor = 0.0;
  bool _buildDefaultDragHandles = true;
  bool _reverse = false;
  EdgeInsets _padding = EdgeInsets.all(10);
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
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
                'ReorderableListView是通过长按拖动某一项到另一个位置来重新排序的列表组件。此类适用于具有少量子级的视图，因为构建List需要为每个可能显示在列表视图中的子级而不是仅那些实际可见的子级进行工作。而且列表的每项必须有个key。',
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
              BooleanParam(
                paramKey: 'buildDefaultDragHandles:',
                paramValue: '$_buildDefaultDragHandles',
                value: _buildDefaultDragHandles,
                onChangedCb: (bool value) {
                  setState(() {
                    _buildDefaultDragHandles = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'reverse:',
                paramValue: '$_reverse',
                value: _reverse,
                onChangedCb: (bool value) {
                  setState(() {
                    _reverse = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'anchor:',
                paramValue: '$_anchor',
                groupValue: _anchor,
                items: [
                  {
                    'name': '0.0',
                    'value': 0.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _anchor = value;
                      });
                    },
                  },
                  {
                    'name': '0.5',
                    'value': 0.5,
                    'onChangedCb': (value) {
                      setState(() {
                        _anchor = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _anchor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'padding:',
                paramValue: '$_padding',
                groupValue: _padding,
                items: [
                  {
                    'name': '10.0',
                    'value': EdgeInsets.all(10.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': EdgeInsets.all(20.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': EdgeInsets.all(30.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _padding = value;
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
          height: 300,
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
            child: ReorderableListView(
              anchor: _anchor,
              buildDefaultDragHandles: _buildDefaultDragHandles,
              padding: _padding,
              reverse: _reverse,
              children: <Widget>[
                for (int index = 0; index < _items.length; index++)
                  ListTile(
                    key: Key('$index'),
                    tileColor:
                        _items[index].isOdd ? oddItemColor : evenItemColor,
                    title: Text('Item ${_items[index]}'),
                  ),
              ],
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final int item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
