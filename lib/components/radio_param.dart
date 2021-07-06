import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class RadioParam extends StatelessWidget {
  RadioParam({
    Key? key,
    required this.paramKey,
    required this.paramValue,
    this.groupValue,
    required this.items,
  }) : super(key: key);

  final String paramKey; // 参数名称
  final String paramValue; // 参数值
  final dynamic groupValue; // 选项全局参数值
  final List<Map<String, dynamic>> items; //选项列表

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Text(
              paramKey,
              style: TextStyle(
                color: MyStyle.paramKeyColor,
                fontSize: MyStyle.paramKeyFontSize,
                fontWeight: MyStyle.titleFontWeight,
              ),
            ),
            Text(
              paramValue,
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
            children: items.map<Widget>((item) {
              return Row(
                children: [
                  Container(
                    width: 25,
                    margin: EdgeInsets.only(left: 5),
                    child: Radio<dynamic>(
                      value: item['value'],
                      groupValue: groupValue,
                      activeColor: MyStyle.componentColor,
                      onChanged: (value) {
                        item['onChangedCb'](value);
                      },
                    ),
                  ),
                  Text(
                    item['name'],
                    style: TextStyle(
                      fontSize: 12,
                      color: MyStyle.paramValueColor,
                    ),
                  )
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
