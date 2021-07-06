import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';

class BooleanParam extends StatelessWidget {
  BooleanParam({
    Key? key,
    required this.paramKey,
    required this.paramValue,
    required this.value,
    required this.onChangedCb,
  }) : super(key: key);

  final String paramKey; // 参数名称
  final String paramValue; // 参数值
  final bool value; // 选项值
  final Function onChangedCb; // 选项回调函数

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
          child: Switch(
            activeColor: MyStyle.componentColor,
            value: value,
            onChanged: (bool value) {
              onChangedCb(value);
            },
          ),
        ),
      ],
    );
  }
}
