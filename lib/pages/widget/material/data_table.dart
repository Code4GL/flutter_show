import 'package:flutter/material.dart';
import 'package:flutter_show/common/my_style.dart';
import 'package:flutter_show/components/boolean_param.dart';
import 'package:flutter_show/components/radio_param.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  bool _showCheckboxColumn = true;
  bool _showBottomBorder = true;
  double _columnSpacing = 50.0;
  double _dataRowHeight = 50.0;
  double _dividerThickness = 2.0;
  double _headingRowHeight = 50.0;
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 使用场景
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.scenesBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '温馨提示',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              Text(
                '在表格中显示数据的成本很高，因为要布置表格，所有数据必须测量两次，一次是协商用于每列的维度，另一次是根据协商结果实际布置表格。出于这个原因，如果您有大量数据，建议您使用PaginatedDataTable，它会自动将数据拆分为多个页面。',
                style: TextStyle(
                  fontSize: MyStyle.scenesContentFontSize,
                  color: MyStyle.scenesContentColor,
                ),
              )
            ],
          ),
        ),
        // 参数配置
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: MyStyle.paramBgColor,
            borderRadius: MyStyle.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '参数配置',
                style: TextStyle(
                  color: MyStyle.titleColor,
                  fontWeight: MyStyle.titleFontWeight,
                ),
              ),
              BooleanParam(
                paramKey: 'showCheckboxColumn:',
                paramValue: '$_showCheckboxColumn',
                value: _showCheckboxColumn,
                onChangedCb: (bool value) {
                  setState(() {
                    _showCheckboxColumn = value;
                  });
                },
              ),
              BooleanParam(
                paramKey: 'showBottomBorder:',
                paramValue: '$_showBottomBorder',
                value: _showBottomBorder,
                onChangedCb: (bool value) {
                  setState(() {
                    _showBottomBorder = value;
                  });
                },
              ),
              RadioParam(
                paramKey: 'columnSpacing:',
                paramValue: '$_columnSpacing',
                groupValue: _columnSpacing,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _columnSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '60.0',
                    'value': 60.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _columnSpacing = value;
                      });
                    },
                  },
                  {
                    'name': '70.0',
                    'value': 70.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _columnSpacing = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'dataRowHeight:',
                paramValue: '$_dataRowHeight',
                groupValue: _dataRowHeight,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dataRowHeight = value;
                      });
                    },
                  },
                  {
                    'name': '60.0',
                    'value': 60.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dataRowHeight = value;
                      });
                    },
                  },
                  {
                    'name': '70.0',
                    'value': 70.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dataRowHeight = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'dividerThickness:',
                paramValue: '$_dividerThickness',
                groupValue: _dividerThickness,
                items: [
                  {
                    'name': '2.0',
                    'value': 2.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dividerThickness = value;
                      });
                    },
                  },
                  {
                    'name': '3.0',
                    'value': 3.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dividerThickness = value;
                      });
                    },
                  },
                  {
                    'name': '4.0',
                    'value': 4.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _dividerThickness = value;
                      });
                    },
                  },
                ],
              ),
              RadioParam(
                paramKey: 'headingRowHeight:',
                paramValue: '$_headingRowHeight',
                groupValue: _headingRowHeight,
                items: [
                  {
                    'name': '50.0',
                    'value': 50.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _headingRowHeight = value;
                      });
                    },
                  },
                  {
                    'name': '60.0',
                    'value': 60.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _headingRowHeight = value;
                      });
                    },
                  },
                  {
                    'name': '70.0',
                    'value': 70.0,
                    'onChangedCb': (value) {
                      setState(() {
                        _headingRowHeight = value;
                      });
                    },
                  },
                ],
              ),
            ],
          ),
        ),
        // 展示区域
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: MyStyle.displayAreaShadowColor, //投影颜色
                blurRadius: MyStyle.displayAreaBlurRadius, //投影距离，有模糊效果
                spreadRadius: MyStyle.displayAreaSpreadRadius, // 扩展距离，无模糊效果
              )
            ],
            borderRadius: MyStyle.borderRadius,
          ),
          child: Center(
            child: DataTable(
              showCheckboxColumn: _showCheckboxColumn,
              showBottomBorder: _showBottomBorder,
              columnSpacing: _columnSpacing,
              dataRowHeight: _dataRowHeight,
              dividerThickness: _dividerThickness,
              headingRowHeight: _headingRowHeight,
              columns: const <DataColumn>[
                DataColumn(label: Text('Number')),
                DataColumn(label: Text('Name')),
              ],
              rows: List<DataRow>.generate(
                numItems,
                (int index) => DataRow(
                  color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    // All rows will have the same selected color.
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08);
                    }
                    // Even rows will have a grey color.
                    if (index.isEven) {
                      return Colors.grey.withOpacity(0.3);
                    }
                    return null; // Use default value for other states and odd rows.
                  }),
                  cells: <DataCell>[
                    DataCell(Text('Row $index')),
                    DataCell(Text('Row $index')),
                  ],
                  selected: selected[index],
                  onSelectChanged: (bool value) {
                    setState(() {
                      selected[index] = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
