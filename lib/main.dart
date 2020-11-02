import 'package:flutter/material.dart';
import 'package:sample_flutter_wow/aboutdialog.dart';
import 'package:sample_flutter_wow/home.dart';
import 'package:sample_flutter_wow/sliverappbar.dart';

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
