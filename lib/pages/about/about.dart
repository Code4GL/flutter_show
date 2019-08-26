import 'package:flutter/material.dart';

import 'package:flutter_show/components/webview.dart';

class AboutPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/flutter.png'))),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/images/userImage.png"),
          ),
          otherAccountsPictures: <Widget>[
            IconButton(
              icon: Image(
                image: AssetImage('assets/images/github.png'),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return WebViewPage(
                      'flutter_show', 'https://github.com/Code4GL/flutter_show');
                }));
              },
            ),
          ],
          accountName: Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 20,
              ),
              Text("  一修",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          accountEmail: Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.white,
                size: 20,
              ),
              Text("  guanli1991@163.com",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.change_history),
          title: Text('Change history'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }
}
