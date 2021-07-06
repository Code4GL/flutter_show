import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class DragTargetPage extends StatefulWidget {
  @override
  _DragTargetPageState createState() => _DragTargetPageState();
}

class _DragTargetPageState extends State<DragTargetPage> {
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
                'DragTarget需要和Draggable配合使用，当Draggable被拖动到DragTarget上方并松手，DragTarget会根据传递过来的数据判断是否需要接受该数据。DragTarget本身也是一个StatefulWidget，可以根据接收到的数据进行改变。',
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Draggable(
                    data: "DraggableA",
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                      child: Center(child: Text('DraggableA')),
                    ),
                    feedback: Container(
                      color: Colors.blue[100],
                      width: 100,
                      height: 100,
                      child: Center(child: Text('A')),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Draggable(
                    data: "DraggableB",
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                      child: Center(child: Text('DraggableB')),
                    ),
                    feedback: Container(
                      color: Colors.red[100],
                      width: 100,
                      height: 100,
                      child: Center(child: Text('B')),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 150,
                  child: DragTarget(
                    builder: (BuildContext context, List<String?> candidateData,
                        List<dynamic> rejectedData) {
                      print('DragTarget builder');
                      Color c;
                      String s;
                      if (candidateData.isNotEmpty &&
                          candidateData.first == 'DraggableA') {
                        c = Colors.amber;
                        s = '接收到DraggableA';
                      } else if (rejectedData.isNotEmpty) {
                        c = Colors.grey;
                        s = '未接收到DraggableA，接收为${rejectedData.first}';
                      } else {
                        s = 'DragTarget';
                        c = Colors.green;
                      }
                      return Container(
                        color: c,
                        width: 100,
                        height: 100,
                        child: Center(child: Text(s)),
                      );
                    },
                    onWillAccept: (s) {
                      print('onWillAccept $s');
                      if (s == 'DraggableA') {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    onAccept: (s) {
                      print('onAccept $s');
                    },
                    onAcceptWithDetails: (DragTargetDetails<String> details) {
                      print('onAcceptWithDetails ${details.data}');
                      print('onAcceptWithDetails ${details.offset}');
                    },
                    onLeave: (s) {
                      print('onLeave $s');
                    },
                    onMove: (DragTargetDetails<dynamic> details) {
                      print('onMove ${details.data}');
                      print('onMove ${details.offset}');
                    },
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
