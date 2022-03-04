import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

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
              'ElevatedButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('ElevatedButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('ElevatedButton'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'TextButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text('TextButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                  onPressed: null,
                  child: Text('TextButton'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'OutlinedButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('OutlinedButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: OutlinedButton(
                  onPressed: null,
                  child: Text('OutlinedButton'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: CupertinoButton(
                  onPressed: () {},
                  child: Text('CupertinoButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('CupertinoButton'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'IconButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.favorite),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'Button.icon',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  label: Text('ElevatedButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.send),
                  label: Text('ElevatedButton'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  label: Text('TextButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.send),
                  label: Text('TextButton'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  label: Text('OutlinedButton'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: OutlinedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.send),
                  label: Text('OutlinedButton'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'FloatingActionButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: FloatingActionButton(
                  heroTag: '1',
                  onPressed: () {},
                  child: Text('F'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: FloatingActionButton(
                  heroTag: '2',
                  onPressed: null,
                  child: Text('F'),
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'DropdownButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: DropdownButton<String>(
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: DropdownButton(
                  items: <String>['One', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: null,
                ),
              ),
            ],
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'PopupMenuButton',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            children: [
              Container(
                child: PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Working a lot harder',
                      child: Text('Working a lot harder'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Being a lot smarter',
                      child: Text('Being a lot smarter'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Being a self-starter',
                      child: Text('Being a self-starter'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Placed in charge of trading charter',
                      child: Text('Placed in charge of trading charter'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: PopupMenuButton<String>(
                  enabled: false,
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Working a lot harder',
                      child: Text('Working a lot harder'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Being a lot smarter',
                      child: Text('Being a lot smarter'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Being a self-starter',
                      child: Text('Being a self-starter'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Placed in charge of trading charter',
                      child: Text('Placed in charge of trading charter'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
