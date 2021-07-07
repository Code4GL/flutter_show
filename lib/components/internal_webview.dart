import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// 内部网页：包含Navigator的网页
class InternalWebViewPage extends StatefulWidget {
  InternalWebViewPage(
    this.title,
    this.url,
  );

  final String title;
  final String url;

  @override
  State<StatefulWidget> createState() => _InternalWebViewPageState(title, url);
}

class _InternalWebViewPageState extends State<InternalWebViewPage> {
  String title;
  String url;

  _InternalWebViewPageState(this.title, this.url);

  double _progress = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        bottom: PreferredSize(
          child: LinearProgressIndicator(
            value: _progress,
            minHeight: 1.0,
            color: Theme.of(context).accentColor,
            backgroundColor: Colors.white,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: WebView(
        initialUrl: this.url,
        //JS执行模式:是否允许JS执行
        javascriptMode: JavascriptMode.unrestricted,
        onProgress: (int progress) {
          setState(() {
            _progress = progress / 100;
          });
        },
      ),
    );
  }
}
