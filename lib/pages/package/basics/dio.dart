import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:dio/dio.dart';

class DioPage extends StatefulWidget {
  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  dynamic _result = '';
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
                '相对于http包，dio多了许多功能的封装，支持拦截器、全局配置、FormData、请求取消、文件下载、超时等。如果需要更加底层的数据请求工具，请使用http。',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('请求：'),
                    ElevatedButton(
                      child: Text('https://www.baidu.com/'),
                      onPressed: () async {
                        dynamic response =
                            await Dio().get('https://www.baidu.cn');
                        setState(() {
                          _result = response;
                        });
                      },
                    ),
                  ],
                ),
                Text('结果：'),
                Text(
                  '$_result',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
