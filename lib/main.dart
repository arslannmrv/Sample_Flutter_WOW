import 'package:flutter/material.dart';
import 'package:sample_flutter_wow/aboutdialog.dart';
import 'package:sample_flutter_wow/checkboxlistile.dart';
import 'package:sample_flutter_wow/home.dart';
import 'package:sample_flutter_wow/sliverapp_tabbar.dart';
import 'package:sample_flutter_wow/sliverappbar.dart';
import 'package:sample_flutter_wow/switchlisttile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/sliverappbar": (context) => SliverBar(),
        "/aboutdialog": (context) => AboutDialogSample(),
        "/checkboxlist": (context) => CheckBoxList(),
        "/sliverapp_tabbar": (context) => SilverAppBarWithTabBar(),
        "/switchlisttile":(context) => Switchlist(),
      },
      title: 'Sample Flutter WOW',
      theme: ThemeData(
        primaryColor: Color(0xfff4a419),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
