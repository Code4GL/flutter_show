import 'package:flutter/material.dart';

class ColorCell extends StatelessWidget {

  ColorCell({Key key, this.title, this.introduction,this.routeName,this.randomColor}) : super(key: key);
  final String title;
  final String introduction;
  final String routeName;
  final Color randomColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('$routeName');
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          color: randomColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: randomColor,
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 0),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
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
              margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
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
