import 'package:flutter/material.dart';

class AboutDialogSample extends StatefulWidget {
  @override
  _AboutDialogSampleState createState() => _AboutDialogSampleState();
}

class _AboutDialogSampleState extends State<AboutDialogSample> {
  
  _showAboutDialog() {
    showAboutDialog(
      context: context,
      applicationIcon: FlutterLogo(
        style: FlutterLogoStyle.stacked,
        size: 75,
      ),
      applicationName: 'SampleFlutterWOW',
      applicationVersion: '0.0.1',
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('SampleFlutterWOW - AboutDialog'))
      ],
    );
  }

  String text =
      "AboutDialog widget is used for showing the licenses of the software which is currently used by the application. ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.priority_high),
            onPressed: _showAboutDialog,
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/aboutdialog.jpg',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                      color: Colors.deepOrange[100],
                      blurRadius: 10.0,
                      spreadRadius: 1.0)
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],
              ),
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child: Text(
                text,
                style: new TextStyle(
                  color: Colors.grey[850],
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                ),
                maxLines: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
