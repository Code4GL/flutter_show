import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/provider/common_provider.dart';
import 'package:provider/provider.dart';

class MergeSemanticsPage extends StatefulWidget {
  @override
  _MergeSemanticsPageState createState() => _MergeSemanticsPageState();
}

class _MergeSemanticsPageState extends State<MergeSemanticsPage> {
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
                '在开发App时，辅助视力障碍人群的使用的功能，叫“语义化”。在使用“语义化”时，有时一个功能是由多个Widget构成，同时又没必要展示各个子Widget的语义，则可以使用MergeSemantic将他们的语义合并。在MaterialApp中添加showSemanticsDebugger: true来查看语义视图。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 运行按钮
        Container(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              CommonProvider commonProvider = context.read<CommonProvider>();
              commonProvider
                  .changeSemantics(!commonProvider.showSemanticsDebugger);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.play_arrow),
                Text('Run'),
              ],
            ),
          ),
        ),
        // 展示区域
        Container(
          height: 100,
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
            child: MergeSemantics(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                  Text('This is a MergeSemantics Widget!'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
