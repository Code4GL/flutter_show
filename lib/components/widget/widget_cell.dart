import 'package:flutter/material.dart';
import 'package:flutter_show/utils/color.dart';

class WidgetCell extends StatelessWidget {
  Color _randomColor = ColorUtils.randomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(_randomColor);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          color: _randomColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: _randomColor,
                offset: Offset(0, 0),
                blurRadius: 20,
                spreadRadius: 0),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 10, 5),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "标题奥术大师大",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "简介奥术大师大所大大大所大所大所大所大所大所大所多大所大所大所大所大所大所大所多大所大所大所大所大所大所大所多所大所大所大所大所大所大所多所大所大所大所大所大所多",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
