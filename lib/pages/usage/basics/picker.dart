import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerPage extends StatelessWidget {
  const PickerPage({Key? key}) : super(key: key);

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
              'CupertinoPicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showCupertinoModalPopup<String>(
                context: context,
                semanticsDismissible: true,
                builder: (BuildContext context) => Container(
                  height: 200,
                  color: Colors.white,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    onSelectedItemChanged: (int value) {},
                    children: <Widget>[
                      Text('data1'),
                      Text('data2'),
                      Text('data3'),
                    ],
                  ),
                ),
              ),
              child: Text('CupertinoPicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoDatePicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showCupertinoModalPopup<String>(
                context: context,
                semanticsDismissible: true,
                builder: (BuildContext context) => Container(
                  height: 200,
                  color: Colors.white,
                  child: CupertinoDatePicker(
                    onDateTimeChanged: (DateTime value) {},
                  ),
                ),
              ),
              child: Text('CupertinoDatePicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'CupertinoTimerPicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => showCupertinoModalPopup<String>(
                context: context,
                semanticsDismissible: true,
                builder: (BuildContext context) => Container(
                  height: 200,
                  color: Colors.white,
                  child: CupertinoTimerPicker(
                    onTimerDurationChanged: (Duration value) {},
                  ),
                ),
              ),
              child: Text('CupertinoTimerPicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'showDatePicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1949),
                  lastDate: DateTime(DateTime.now().year + 1),
                )
              },
              child: Text('showDatePicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'showTimePicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                )
              },
              child: Text('showTimePicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'showDateRangePicker',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => {
                showDateRangePicker(
                  context: context,
                  firstDate: DateTime(1949),
                  lastDate: DateTime(DateTime.now().year + 1),
                )
              },
              child: Text('showDateRangePicker'),
            ),
          ),
          Divider(),
          Container(
            height: 20,
            child: Text(
              'InputDatePickerFormField',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Center(
            child: InputDatePickerFormField(
              firstDate: DateTime(1949),
              lastDate: DateTime(DateTime.now().year + 1),
            ),
          ),
        ],
      ),
    );
  }
}
