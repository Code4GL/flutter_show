import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({Key key, this.title, this.introduction, this.routeName})
      : super(key: key);
  final String title;
  final String introduction;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('$routeName');
      },
      child: Card(
        child: Column(
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/catalog-widget-placeholder.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
