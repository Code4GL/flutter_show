import 'package:flutter/material.dart';

import 'japan.dart';
import 'toggle.dart';
import 'user_setting.dart';

class StyledWidgetExamplePage extends StatefulWidget {
  @override
  _StyledWidgetExamplePageState createState() =>
      _StyledWidgetExamplePageState();
}

class _StyledWidgetExamplePageState extends State<StyledWidgetExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StyledWidget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return UserSettingsPage();
                    },
                  ),
                );
              },
              child: Text('UserSettings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return JapanPage();
                    },
                  ),
                );
              },
              child: Text('JapanPage'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return TogglePage();
                    },
                  ),
                );
              },
              child: Text('TogglePage'),
            )
          ],
        ),
      ),
    );
  }
}
