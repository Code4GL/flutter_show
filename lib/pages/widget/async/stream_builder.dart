import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  final Stream<int> _bids = (() async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 1;
    await Future<void>.delayed(const Duration(seconds: 1));
  })();

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
                '与FutureBuilder类似，StreamBuilder是个将异步事件流操作和异步UI更新结合在一起的类。不过和FutureBuilder不同的是，它依赖于Stream，可以接收多个异步操作的结果。将当前异步任务的状态信息及结果信息传给builder中的snapshot参数，最后我们可以通过snapshot中的状态信息异步更新UI。',
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
              child: Container(
                alignment: FractionalOffset.center,
                color: Colors.white,
                child: StreamBuilder<int>(
                  stream: _bids,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    List<Widget> children;
                    if (snapshot.hasError) {
                      children = <Widget>[
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Stack trace: ${snapshot.stackTrace}'),
                        ),
                      ];
                    } else {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          children = const <Widget>[
                            Icon(
                              Icons.info,
                              color: Colors.blue,
                              size: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('Select a lot'),
                            )
                          ];
                          break;
                        case ConnectionState.waiting:
                          children = const <Widget>[
                            SizedBox(
                              child: CircularProgressIndicator(),
                              width: 60,
                              height: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('Awaiting bids...'),
                            )
                          ];
                          break;
                        case ConnectionState.active:
                          children = <Widget>[
                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('\$${snapshot.data}'),
                            )
                          ];
                          break;
                        case ConnectionState.done:
                          children = <Widget>[
                            const Icon(
                              Icons.info,
                              color: Colors.blue,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('\$${snapshot.data} (closed)'),
                            )
                          ];
                          break;
                      }
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
