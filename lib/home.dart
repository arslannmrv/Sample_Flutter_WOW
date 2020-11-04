import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> wow = ['SliverAppBar', 'AboutDialog','CheckBoxListTile'];
  List<String> wow2 = ['/sliverappbar', '/aboutdialog','/checkboxlist'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.0),
        child: SafeArea(
          child: AppBar(
            flexibleSpace: SafeArea(
                child: Image.asset(
              'assets/images/FlutterSampleWOW.jpg',
              fit: BoxFit.fill,
            )),
            title: Text(
              "WOW 💙 ",
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, wow2[index]);
              },
              title: Text(wow[index]),
            ),
          );
        },
        itemCount: wow.length,
      ),
    );
  }
}
