import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class IconPage extends StatefulWidget {
  @override
  _IconPageState createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  double _size = 30.0; // 大小
  Color _color = Colors.blue; // 颜色

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
                '使用图标时，必须有一个环境导向性的小部件。通常，这是由WidgetsApp或MaterialApp自动引入的。',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'size:',
                        style: TextStyle(
                          color: MyStyle.paramKeyColor,
                          fontSize: MyStyle.paramKeyFontSize,
                          fontWeight: MyStyle.titleFontWeight,
                        ),
                      ),
                      Text(
                        '$_size',
                        style: TextStyle(
                          color: MyStyle.paramValueColor,
                          fontSize: MyStyle.paramValueFontSize,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: 20.0,
                                groupValue: _size,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _size = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              '20.0',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: 30.0,
                                groupValue: _size,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _size = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              '30.0',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: 40.0,
                                groupValue: _size,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _size = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              '40.0',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'color:',
                        style: TextStyle(
                          color: MyStyle.paramKeyColor,
                          fontSize: MyStyle.paramKeyFontSize,
                          fontWeight: MyStyle.titleFontWeight,
                        ),
                      ),
                      Text(
                        '#${_color.value.toRadixString(16).toUpperCase()}',
                        style: TextStyle(
                          color: MyStyle.paramValueColor,
                          fontSize: MyStyle.paramValueFontSize,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: Colors.blue,
                                groupValue: _color,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _color = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'blue',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: Colors.pink,
                                groupValue: _color,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _color = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'pink',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              margin: EdgeInsets.only(left: 5),
                              child: Radio(
                                value: Colors.purple,
                                groupValue: _color,
                                activeColor: MyStyle.componentColor,
                                onChanged: (value) {
                                  setState(() {
                                    _color = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'purple',
                              style: TextStyle(
                                fontSize: 12,
                                color: MyStyle.paramValueColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // 展示区域
        Container(
          height: 100,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: _color,
                size: _size,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: _color,
                size: _size,
              ),
              Icon(
                Icons.beach_access,
                color: _color,
                size: _size,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
