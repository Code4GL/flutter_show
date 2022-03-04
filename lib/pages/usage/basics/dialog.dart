import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            child: Text(
              'CupertinoAlertDialog',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: Text('CupertinoAlertDialog'),
                    content: Text('Proceed with destructive action?'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        child: Text('No'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text('Yes'),
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
              child: Text('CupertinoAlertDialog'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoDialogAction',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: CupertinoDialogAction(
                  child: Text('Yes'),
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: CupertinoDialogAction(
                  child: Text('No'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'AlertDialog',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text('AlertDialog Title'),
                  content: Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: Text('OK'),
                    ),
                  ],
                ),
              ),
              child: Text('AlertDialog'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'SimpleDialog',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => SimpleDialog(
                  title: Text('Select assignment'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () =>
                          Navigator.pop(context, 'Treasury department'),
                      child: Text('Treasury department'),
                    ),
                    SimpleDialogOption(
                      onPressed: () =>
                          Navigator.pop(context, 'State department'),
                      child: Text('State department'),
                    ),
                  ],
                ),
              ),
              child: Text('SimpleDialog'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'SnackBar',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
                child: Text('SnackBar'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Awesome Snackbar!'),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          ScaffoldMessenger.of(context).clearSnackBars();
                        },
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
