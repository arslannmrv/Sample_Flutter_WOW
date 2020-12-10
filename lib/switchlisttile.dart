import 'package:flutter/material.dart';

class Switchlist extends StatefulWidget {
  @override
  _SwitchlistState createState() => _SwitchlistState();
}

class _SwitchlistState extends State<Switchlist> {
  
  bool _choose = false;
  var _image = 'assets/images/No-image.jpg';
  var _image1 = 'assets/images/Flutterista.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: <Widget>[
          Image.asset(
            _choose == false ? _image : _image1,
            fit: BoxFit.fill,
          ),
          SwitchListTile(
            title: Text('Flutterista'),
            value: _choose,
            onChanged: (value) {
              setState(() {
                _choose = value;
              });
            },
          ),
        ]),
      ),
    );
  }
}
