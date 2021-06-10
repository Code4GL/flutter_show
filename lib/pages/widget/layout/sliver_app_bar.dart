import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
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
                '和CustomScrollView联合使用，来呈现独特效果的AppBar。',
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
                paramKey: 'pinned:',
                paramValue: '$_pinned',
                value: _pinned,
                onChangedCb: (bool value) {
                  setState(() {
                    _pinned = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'snap:',
                paramValue: '$_snap',
                value: _snap,
                onChangedCb: (bool value) {
                  setState(() {
                    _snap = value;
                    _floating = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'floating:',
                paramValue: '$_floating',
                value: _floating,
                onChangedCb: (bool value) {
                  setState(() {
                    _floating = value;
                    _snap = _snap ? !_snap : _snap;
                  });
                },
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
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: _pinned,
                  snap: _snap,
                  floating: _floating,
                  expandedHeight: 160.0,
                  flexibleSpace: const FlexibleSpaceBar(
                    title: Text('SliverAppBar'),
                    background: FlutterLogo(),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                    child: Center(
                      child: Text('Scroll to see the SliverAppBar in effect.'),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        color: index.isOdd ? Colors.white : Colors.black12,
                        height: 100.0,
                        child: Center(
                          child: Text('$index', textScaleFactor: 5),
                        ),
                      );
                    },
                    childCount: 20,
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
