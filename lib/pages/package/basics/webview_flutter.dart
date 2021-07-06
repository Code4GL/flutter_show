import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewFlutterPage extends StatefulWidget {
  @override
  _WebviewFlutterPageState createState() => _WebviewFlutterPageState();
}

class _WebviewFlutterPageState extends State<WebviewFlutterPage> {
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
                '在iOS上，WebView小部件由WKWebView支持；在Android上，WebView小部件由WebView支持。在M1芯片下MacOS常常会出现fatal error: module shared_preferences not found @import shared_preferences报错，解决方法如下：1、升级Flutter版本到最新；2、在新版本下新建一个项目；3、在新项目下添加webview_flutter；4、把旧项目中ios/Podfile文件中的内容换成新项目中的；5、重新运行flutter pub get后启动项目。在这个过程中，可能需要视情况配套修改一些配置，以满足新版本使用。',
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
          height: 300,
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
            child: WebView(
              initialUrl: 'https://www.baidu.com/',
              //JS执行模式:是否允许JS执行
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ),
      ],
    );
  }
}
