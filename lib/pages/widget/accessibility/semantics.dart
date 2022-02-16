import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/provider/common_provider.dart';
import 'package:provider/provider.dart';

class SemanticsPage extends StatefulWidget {
  @override
  _SemanticsPageState createState() => _SemanticsPageState();
}

class _SemanticsPageState extends State<SemanticsPage> {
  String _label = 'Semantics Widget Label'; // 文本描述
  bool _enabled = true; // 是否启用
  bool _readOnly = true; // 是否只读

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
                '在开发App时，辅助视力障碍人群的使用的功能，叫“语义化”。在使用“语义化”时，可以使用Semantics对Widget的语义进行描述。在MaterialApp中添加showSemanticsDebugger: true来查看语义视图。',
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
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Text(
                          'label:',
                          style: TextStyle(
                            color: MyStyle.paramKeyColor,
                            fontSize: MyStyle.paramKeyFontSize,
                            fontWeight: MyStyle.titleFontWeight,
                          ),
                        ),
                        Text(
                          '$_label',
                          style: TextStyle(
                            color: MyStyle.paramValueColor,
                            fontSize: MyStyle.paramValueFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                paramKey: 'readOnly:',
                paramValue: '$_readOnly',
                value: _readOnly,
                onChangedCb: (bool value) {
                  setState(() {
                    _readOnly = value;
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
              CommonProvider commonProvider =
                  Provider.of<CommonProvider>(context, listen: false);
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
            child: Semantics(
              label: _label,
              enabled: _enabled,
              readOnly: _readOnly,
              child: Text("This is a Semantics Widget!"),
            ),
          ),
        ),
      ],
    );
  }
}
