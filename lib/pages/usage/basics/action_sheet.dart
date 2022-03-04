import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetPage extends StatelessWidget {
  const ActionSheetPage({Key? key}) : super(key: key);

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
              'CupertinoActionSheet',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                    title: Text('Title'),
                    message: Text('Message'),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        child: Text('Action One'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: Text('Action Two'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
              child: Text('CupertinoActionSheet'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'showModalBottomSheet',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('showModalBottomSheet'),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'showBottomSheet',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('showBottomSheet'),
              onPressed: () {
                showBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'DraggableScrollableSheet',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => DraggableScrollableSheet(
                  maxChildSize: 0.7,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return ListView.builder(
                      controller: scrollController,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return Material(
                          child: ListTile(
                            title: Text('Item $index'),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              child: Text('DraggableScrollableSheet'),
            ),
          ),
        ],
      ),
    );
  }
}
