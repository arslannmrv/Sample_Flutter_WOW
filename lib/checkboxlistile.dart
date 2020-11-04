import 'package:flutter/material.dart';

class CheckBoxList extends StatefulWidget {
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool _isChecked = false;

  CheckboxListTile checkList() {
    return CheckboxListTile(
      title: Text(
        'CheckBoxListTile',
        style: TextStyle(
            decoration: _isChecked == true
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      secondary: const FlutterLogo(
        style: FlutterLogoStyle.markOnly,
        size: 75,
      ),
      activeColor: Colors.orange,
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: Colors.purple,
      selected: _isChecked,
      value: _isChecked,
      onChanged: (bool value) {
        setState(() {
          _isChecked = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Image.asset(
            'assets/images/checkboxlist.jpg',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _isChecked == true ? Colors.green : Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              child: checkList(),
            ),
          )
        ]));
  }
}
