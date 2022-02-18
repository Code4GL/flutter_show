import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class InteractiveViewerPage extends StatefulWidget {
  @override
  _InteractiveViewerPageState createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  bool _alignPanAxis = false;
  bool _panEnabled = true;
  bool _scaleEnabled = true;
  EdgeInsets _boundaryMargin = EdgeInsets.all(30.0);
  double _minScale = 0.1;
  double _maxScale = 2.0;
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
                '当clipBehavior为Clip.none时，InteractiveViewer可能会在其屏幕的原始区域之外进行绘制，例如当孩子放大并增大尺寸时。 但是，它不会在其原始区域之外接收手势。 要防止InteractiveViewer不接收手势的死区，请不要设置clipBehavior或确保InteractiveViewer小部件是应该交互的区域的大小。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 参数配置
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.paramBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '参数配置',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              BooleanParam(
                paramKey: 'alignPanAxis:',
                paramValue: '$_alignPanAxis',
                value: _alignPanAxis,
                onChangedCb: (bool value) {
                  setState(() {
                    _alignPanAxis = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'panEnabled:',
                paramValue: '$_panEnabled',
                value: _panEnabled,
                onChangedCb: (bool value) {
                  setState(() {
                    _panEnabled = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'scaleEnabled:',
                paramValue: '$_scaleEnabled',
                value: _scaleEnabled,
                onChangedCb: (bool value) {
                  setState(() {
                    _scaleEnabled = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'boundaryMargin:',
                paramValue: '',
                groupValue: _boundaryMargin,
                items: [
                  {
                    'name': '20.0',
                    'value': EdgeInsets.all(20.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _boundaryMargin = value;
                      });
                    },
                  },
                  {
                    'name': '50.0',
                    'value': EdgeInsets.all(50.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _boundaryMargin = value;
                      });
                    },
                  },
                  {
                    'name': '100.0',
                    'value': EdgeInsets.all(100.0),
                    'onChangedCb': (value) {
                      setState(() {
                        _boundaryMargin = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'minScale:',
                paramValue: '$_minScale',
                groupValue: _minScale,
                items: [
                  {
                    'name': '0.1',
                    'value': 0.1,
                    'onChangedCb': (value) {
                      setState(() {
                        _minScale = value;
                      });
                    },
                  },
                  {
                    'name': '1.0',
                    'value': 1.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _minScale = value;
                      });
                    },
                  },
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _minScale = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'maxScale:',
                paramValue: '$_maxScale',
                groupValue: _maxScale,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxScale = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxScale = value;
                      });
                    },
                  },
                  {
                    'name': '4.0',
                    'value': 4.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _maxScale = value;
                      });
                    },
                  },
                ],
              ),
            ],
          ),
        ),
        // 展示区域
        Container(
          height: 200,
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
            child: InteractiveViewer(
              alignPanAxis: _alignPanAxis,
              panEnabled: _panEnabled,
              scaleEnabled: _scaleEnabled,
              boundaryMargin: _boundaryMargin,
              minScale: _minScale,
              maxScale: _maxScale,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.orange, Colors.red],
                    stops: <double>[0.0, 1.0],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
