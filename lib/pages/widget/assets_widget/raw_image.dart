import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class RawImagePage extends StatefulWidget {
  @override
  _RawImagePageState createState() => _RawImagePageState();
}

class _RawImagePageState extends State<RawImagePage> {
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
                '此小部件很少直接使用，而是考虑使用Image。Image的内部其实是通过RawImage实现的，Image其实是对RawImage进行了一次封装，遮盖了更多的细节，方便给人使用。',
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
