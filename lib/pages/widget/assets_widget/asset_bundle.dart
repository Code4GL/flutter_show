import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class AssetBundlePage extends StatefulWidget {
  @override
  _AssetBundlePageState createState() => _AssetBundlePageState();
}

class _AssetBundlePageState extends State<AssetBundlePage> {
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
                '这是一个资源获取的抽象类，定义了load，loadString等方法，CachingAssetBundle和NetworkAssetBundle是它的子类。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
