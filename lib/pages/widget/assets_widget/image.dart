import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/provider/common_provider.dart';
import 'package:provider/provider.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
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
                'Image有一个必选的image参数，它对应一个ImageProvider。ImageProvider是一个抽象类，主要定义了图片数据获取的接口load()，从不同的数据源获取图片需要实现不同的ImageProvider，如AssetsImage，NetworkImage，FileImage，MemoryImage等均为ImageProvider的子类。',
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
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'excluding:',
                          style: TextStyle(
                            color: MyStyle.paramKeyColor,
                            fontSize: MyStyle.paramKeyFontSize,
                            fontWeight: MyStyle.titleFontWeight,
                          ),
                        ),
                        Text(
                          '$_excluding',
                          style: TextStyle(
                            color: MyStyle.paramValueColor,
                            fontSize: MyStyle.paramValueFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Switch(
                      activeColor: MyStyle.componentColor,
                      value: _excluding,
                      onChanged: (bool value) {
                        setState(() {
                          _excluding = value;
                        });
                      },
                    ),
                  ),
                ],
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
          height: 300,
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
            child: Image(
              height: 200,
              width: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.lighten,
              fit: BoxFit.fitHeight,
              repeat: ImageRepeat.repeat,
              image: AssetImage('assets/images/flutter.png'),
            ),
          ),
        ),
      ],
    );
  }
}
