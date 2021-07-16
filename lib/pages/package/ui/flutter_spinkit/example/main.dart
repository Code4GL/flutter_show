import 'package:flutter/material.dart';

import './showcase.dart';
import './workspace.dart';

class FlutterSpinkitExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterSpinkitExample'),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              child: LayoutBuilder(
                builder: (context, _) {
                  return IconButton(
                    icon: Icon(Icons.play_circle_filled),
                    iconSize: 50.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ShowCase(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                  );
                },
              ),
              alignment: Alignment.bottomCenter,
            ),
            Positioned.fill(
              child: Center(
                child: WorkSpace(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
