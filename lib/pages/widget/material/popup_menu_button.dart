import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class PopupMenuButtonPage extends StatefulWidget {
  @override
  _PopupMenuButtonPageState createState() => _PopupMenuButtonPageState();
}

class _PopupMenuButtonPageState extends State<PopupMenuButtonPage> {
  WhyFarther _selection = WhyFarther.harder;
  bool _enabled = true;
  bool _enableFeedback = true;
  Color _color = Colors.green;
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
                '',
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
                paramKey: 'enabled:',
                paramValue: '$_enabled',
                value: _enabled,
                onChangedCb: (bool value) {
                  setState(() {
                    _enabled = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'enableFeedback:',
                paramValue: '$_enableFeedback',
                value: _enableFeedback,
                onChangedCb: (bool value) {
                  setState(() {
                    _enableFeedback = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'color:',
                paramValue: '#${_color.value.toRadixString(16).toUpperCase()}',
                groupValue: _color,
                items: [
                  {
                    'name': 'green',
                    'value': Colors.green,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'blue',
                    'value': Colors.blue,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
                      });
                    },
                  },
                  {
                    'name': 'amber',
                    'value': Colors.amber,
                    'onChangedCb': (value) {
                      setState(() {
                        _color = value;
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
            child: PopupMenuButton<WhyFarther>(
              color: _color,
              enabled: _enabled,
              enableFeedback: _enableFeedback,
              tooltip: '$_selection',
              onSelected: (WhyFarther result) {
                setState(() {
                  _selection = result;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: Text('Being a lot smarter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.selfStarter,
                  child: Text('Being a self-starter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.tradingCharter,
                  child: Text('Placed in charge of trading charter'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
