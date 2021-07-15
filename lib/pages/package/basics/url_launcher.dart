import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPage extends StatefulWidget {
  @override
  _UrlLauncherPageState createState() => _UrlLauncherPageState();
}

class _UrlLauncherPageState extends State<UrlLauncherPage> {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
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
                '用于启动URL的Flutter插件。支持iOS、Android、Web、Windows、macOS和Linux。',
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
                ElevatedButton(
                  child: Text('https://www.baidu.com/'),
                  onPressed: () async {
                    const url = 'https://www.baidu.com/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                ElevatedButton(
                  child: Text('tel:10000'),
                  onPressed: () async {
                    const url = 'tel:10000';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                ElevatedButton(
                  child: Text('sms:10000'),
                  onPressed: () async {
                    const url = 'sms:10000';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                ElevatedButton(
                  child: Text(
                    'mailto:guanli1991@163.com?subject=url_launcher&body=Flutter测试',
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'guanli1991@163.com',
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'Example Subject & Symbols are allowed!'
                      }),
                    );
                    if (await canLaunch(emailLaunchUri.toString())) {
                      await launch(emailLaunchUri.toString());
                    } else {
                      throw 'Could not launch ${emailLaunchUri.toString()}';
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
