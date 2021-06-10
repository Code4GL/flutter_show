import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class SliverListPage extends StatefulWidget {
  @override
  _SliverListPageState createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
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
                'SliverList通过“航位推算”确定其滚动偏移量，因为条子可见部分之外的子项未具体化，这意味着SliverList无法了解其主轴范围。取而代之的是，新实现的子项与现有子项相邻放置。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
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
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      height: 80,
                      color: Colors.primaries[0],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[1],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[2],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[3],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[4],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[5],
                    ),
                    Container(
                      height: 80,
                      color: Colors.primaries[6],
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
