import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionsActionPage extends StatefulWidget {
  OptionsActionPage({Key? key}) : super(key: key);

  @override
  _OptionsActionPageState createState() => _OptionsActionPageState();
}

class _OptionsActionPageState extends State<OptionsActionPage> {
  String _groupValue = "a";
  bool _isTrue = true;
  int _radioValue = 1;
  bool _isChecked1 = true;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

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
              'CupertinoSegmentedControl',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: CupertinoSegmentedControl(
              groupValue: _groupValue,
              onValueChanged: (String value) {
                setState(() {
                  _groupValue = value;
                });
              },
              children: {
                'a': Container(
                  alignment: Alignment.center,
                  width: 130.0,
                  child: Text('A'),
                ),
                'b': Text('B'),
                'c': Text('C'),
              },
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoSlidingSegmentedControl',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: CupertinoSlidingSegmentedControl(
              groupValue: _groupValue,
              onValueChanged: (String? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
              children: {
                'a': Container(
                  alignment: Alignment.center,
                  width: 130.0,
                  child: Text('A'),
                ),
                'b': Text('B'),
                'c': Text('C'),
              },
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoSwitch',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: CupertinoSwitch(
              onChanged: (bool value) {
                setState(() {
                  _isTrue = !_isTrue;
                });
              },
              value: _isTrue,
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'Switch',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: Switch(
              onChanged: (bool value) {
                setState(() {
                  _isTrue = !_isTrue;
                });
              },
              value: _isTrue,
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'Checkbox',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: Row(
              children: [
                Checkbox(
                  value: _isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked1 = value!;
                    });
                  },
                ),
                Checkbox(
                  value: _isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked2 = value!;
                    });
                  },
                ),
                Checkbox(
                  value: _isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked3 = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'Radio',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: Row(
              children: [
                Radio(
                  groupValue: _radioValue,
                  value: 1,
                  onChanged: (int? value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
                Radio(
                  groupValue: _radioValue,
                  value: 2,
                  onChanged: (int? value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
                Radio(
                  groupValue: _radioValue,
                  value: 3,
                  onChanged: (int? value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
