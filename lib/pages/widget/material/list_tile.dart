import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class ListTilePage extends StatefulWidget {
  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  bool _dense = false;
  bool _enabled = false;
  bool _selected = false;
  Color _selectedTileColor = Colors.blue;
  Color _tileColor = Colors.white;
  EdgeInsets _contentPadding = EdgeInsets.all(10);
  double _horizontalTitleGap = 10.0;
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
                'ListTile通常用在ListViews中，或排列在Drawers和Cards的Columns中。请注意，leading和trailing小部件可以在水平方向上任意扩展，因此请确保它们受到适当的约束。',
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
                paramKey: 'dense:',
                paramValue: '$_dense',
                value: _dense,
                onChangedCb: (bool value) {
                  setState(() {
                    _dense = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'enabled:',
                paramValue: '$_enabled',
                value: _enabled,
                onChangedCb: (bool value) {
                  setState(() {
                    _enabled = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'selected:',
                paramValue: '$_selected',
                value: _selected,
                onChangedCb: (bool value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'selectedTileColor:',
                paramValue: '',
                groupValue: _selectedTileColor,
                items: [
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedTileColor = value;
                      });
                    },
                  },
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedTileColor = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _selectedTileColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'tileColor:',
                paramValue:
                    '#${_tileColor.value.toRadixString(16).toUpperCase()}',
                groupValue: _tileColor,
                items: [
                  {
                    'name': 'white',
                    'value': Colors.white,
                    'onChangedCb': (value) {
                      setState(() {
                        _tileColor = value;
                      });
                    },
                  },
                  {
                    'name': 'red',
                    'value': Colors.red,
                    'onChangedCb': (value) {
                      setState(() {
                        _tileColor = value;
                      });
                    },
                  },
                  {
                    'name': 'black',
                    'value': Colors.black,
                    'onChangedCb': (value) {
                      setState(() {
                        _tileColor = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'contentPadding:',
                paramValue: '',
                groupValue: _contentPadding,
                items: [
                  {
                    'name': 'zero',
                    'value': EdgeInsets.zero,
                    'onChangedCb': (value) {
                      setState(() {
                        _contentPadding = value;
                      });
                    },
                  },
                  {
                    'name': '10.0',
                    'value': EdgeInsets.all(10.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _contentPadding = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': EdgeInsets.all(20.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _contentPadding = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'horizontalTitleGap:',
                paramValue: '$_horizontalTitleGap',
                groupValue: _horizontalTitleGap,
                items: [
                  {
                    'name': '10.0',
                    'value': 10.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _horizontalTitleGap = value;
                      });
                    },
                  },
                  {
                    'name': '20.0',
                    'value': 20.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _horizontalTitleGap = value;
                      });
                    },
                  },
                  {
                    'name': '30.0',
                    'value': 30.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _horizontalTitleGap = value;
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
            child: ListView(
              children: <Widget>[
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    leading: FlutterLogo(),
                    title: Text('One-line with leading widget'),
                  ),
                ),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    title: Text('One-line with trailing widget'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    leading: FlutterLogo(),
                    title: Text('One-line with both widgets'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    title: Text('One-line dense ListTile'),
                  ),
                ),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    leading: FlutterLogo(size: 56.0),
                    title: Text('Two-line ListTile'),
                    subtitle: Text('Here is a second line'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    dense: _dense,
                    enabled: _enabled,
                    selected: _selected,
                    selectedTileColor: _selectedTileColor,
                    tileColor: _tileColor,
                    contentPadding: _contentPadding,
                    horizontalTitleGap: _horizontalTitleGap,
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Three-line ListTile'),
                    subtitle: Text(
                        'A sufficiently long subtitle warrants three lines.'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
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
