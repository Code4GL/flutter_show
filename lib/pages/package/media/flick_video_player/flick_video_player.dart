import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

import 'example/main.dart';

class FlickVideoPlayerPage extends StatefulWidget {
  @override
  _FlickVideoPlayerPageState createState() => _FlickVideoPlayerPageState();
}

class _FlickVideoPlayerPageState extends State<FlickVideoPlayerPage> {
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
                'Flick Video Player是一款Flutter的视频播放器。 video_player插件提供视频播放的低级访问权限。Flick Player将video_player封装在幕后，并为开发人员提供基础架构以创建他们自己的UI和功能集。',
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
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FlickVideoPlayerExamplePage();
                    },
                  ),
                );
              },
              child: Text('FlickVideoPlayerExamplePage'),
            ),
          ),
        ),
      ],
    );
  }
}
