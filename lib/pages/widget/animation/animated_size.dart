import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class AnimatedSizePage extends StatefulWidget {
  @override
  _AnimatedSizePageState createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage>
    with SingleTickerProviderStateMixin {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

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
                '子组件的大小发生变化时，会产生动画来转换大小。',
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
            child: GestureDetector(
              onTap: () => _updateSize(),
              child: Container(
                color: Colors.amberAccent,
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
