import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  final Future<String> _calculation =
      Future<String>.delayed(Duration(seconds: 2), () => 'Data Loaded');

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
                'FutureBuilder是个将异步操作和异步UI更新结合在一起的类。它依赖于Future异步任务，将当前异步任务的状态信息及结果信息传给builder中的snapshot参数，最后我们可以通过snapshot中的状态信息异步更新UI。',
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
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
              child: FutureBuilder<String>(
                future: _calculation,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  List<Widget> children;
                  if (snapshot.hasData) {
                    children = <Widget>[
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Result: ${snapshot.data}'),
                      )
                    ];
                  } else if (snapshot.hasError) {
                    children = <Widget>[
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                      )
                    ];
                  } else {
                    children = const <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ];
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
