import 'package:flutter/material.dart';
import 'package:flutter_show/pages/widget/three_level_widget.dart';

import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';

class ImageCell extends StatelessWidget {
  ImageCell({
    Key? key,
    required this.title,
    required this.introductionEN,
    required this.introductionCN,
    required this.routeName,
    required this.imagePath,
    required this.docPath,
    required this.inheritance,
    required this.constructors,
  }) : super(key: key);

  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String imagePath;
  final String docPath;
  final String inheritance;
  final String constructors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ThreeLevelWidgetPage(
                title: this.title,
                introductionEN: this.introductionEN,
                introductionCN: this.introductionCN,
                routeName: this.routeName,
                imagePath: this.imagePath,
                docPath: this.docPath,
                inheritance: this.inheritance,
                constructors: this.constructors,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.grey[300]!,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment(0, 0.9),
              children: <Widget>[
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        '$imagePath' == ''
                            ? 'assets/images/flutter.png'
                            : '$imagePath',
                      ),
                      fit: '$imagePath' == '' ? BoxFit.cover : BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "$title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: AlignmentDirectional.centerStart,
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? "$introductionCN"
                      : "$introductionEN",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
