import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/internal_webview.dart';

class CupertinoIconsPage extends StatefulWidget {
  @override
  _CupertinoIconsPageState createState() => _CupertinoIconsPageState();
}

class _CupertinoIconsPageState extends State<CupertinoIconsPage> {
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
                'cupertino_icons是Cupertino小部件的默认图标依赖，使用时需要引入cupertino_icons后通过CupertinoIcons.phone来实现；同时Flutter内置了一套Material图标，使用时则通过Icons.phone来实现。',
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
            child: Column(
              children: [
                Row(
                  children: [
                    Text('CupertinoIcons.phone：'),
                    Icon(CupertinoIcons.phone),
                  ],
                ),
                Row(
                  children: [
                    Text('Icons.phone：'),
                    Icon(Icons.phone),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        '查看更多:',
                        style: TextStyle(fontSize: 10),
                      ),
                      GestureDetector(
                        child: Text(
                          'https://flutter.github.io/cupertino_icons/',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return InternalWebViewPage('cupertino_icons',
                                    'https://flutter.github.io/cupertino_icons/');
                              },
                            ),
                          );
                        },
                      ),
                    ],
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
