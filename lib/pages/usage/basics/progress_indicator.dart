import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorPage extends StatelessWidget {
  const ProgressIndicatorPage({Key? key}) : super(key: key);

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
              'CupertinoActivityIndicator',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: CupertinoActivityIndicator(),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CircularProgressIndicator',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: CircularProgressIndicator(),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'LinearProgressIndicator',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: LinearProgressIndicator(),
          ),
          Divider(),
        ],
      ),
    );
  }
}
