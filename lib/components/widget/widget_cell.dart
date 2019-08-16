import 'package:flutter/material.dart';
import 'package:flutter_show/utils/color.dart';

class WidgetCell extends StatelessWidget {

  WidgetCell({Key key, this.title, this.introduction,this.routeName}) : super(key: key);
  final String title;
  final String introduction;
  final String routeName;
  final Color _randomColor = ColorUtils.randomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('$routeName');
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
                "$title",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "$introduction",
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
