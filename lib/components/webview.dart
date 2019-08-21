import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatelessWidget {
  final String title;
  final String url;
  WebViewPage({Key key,this.title,this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        centerTitle:true,
      ),
      body: WebviewScaffold(
        url: "$url",
        withZoom: true,  // 允许网页缩放
        withLocalStorage: true, // 允许LocalStorage
        withJavascript: true, // 允许执行js代码
      ),
    );
  }
}
