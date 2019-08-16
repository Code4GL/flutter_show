import 'package:flutter/material.dart';

import 'button.dart';

class WidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            child: Card(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Column(children: [
                Image(
                  height: 150,
                  image:
                      AssetImage('assets/images/flutter-mark-square-100.png'),
                  fit: BoxFit.cover,
                ),
                new ListTile(
                  dense:true,
                  title: new Text('1625 Main Street'),
                  leading: new Icon(
                    Icons.restaurant_menu,
                    color: Colors.blue[500],
                  ),
                ),
                new ListTile(
                  dense:true,
                  title: new Text(
                    '(408) 555-1212',
                  ),
                  leading: new Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
                  ),
                ),
                new ListTile(
                  dense:true,
                  title: new Text('costa@example.com'),
                  leading: new Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ]),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonPage()),
              );
            },
            textColor: Colors.white,
            color: Colors.blue,
            child: Text(
              'Button',
            ),
          ),
        ],
      ),
    );
  }
}
