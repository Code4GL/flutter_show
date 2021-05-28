import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/provider/common_provider.dart';
import 'package:provider/provider.dart';

class ExcludeSemanticsPage extends StatefulWidget {
  @override
  _ExcludeSemanticsPageState createState() => _ExcludeSemanticsPageState();
}

class _ExcludeSemanticsPageState extends State<ExcludeSemanticsPage> {
  bool _excluding = true; // 是否排除

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
                '在开发App时，辅助视力障碍人群的使用的功能，叫“语义化”。在使用“语义化”时，有些模块仅仅是用于展示、优化体验的非必须模块。此时，在视力障碍人群使用时为了避免给他们带来过多的无用干扰信息，我们可以使用ExcludeSemantics将其排除。在MaterialApp中添加showSemanticsDebugger: true来查看语义视图。',
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
                paramKey: 'excluding:',
                paramValue: '$_excluding',
                value: _excluding,
                onChangedCb: (bool value) {
                  setState(() {
                    _excluding = value;
                  });
                },
              ),
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
            child: ExcludeSemantics(
              excluding: _excluding,
              child: Text(
                  "This is ${_excluding ? '' : 'not'} a ExcludeSemantics Widget!"),
            ),
          ),
        ),
      ],
    );
  }
}
