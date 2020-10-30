import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> wow = ['SliverAppBar'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Flutter WOW 💙"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            
            child: ListTile(
              onTap:(){ Navigator.pushNamed(context, '/sliverappbar');} ,
              title: Text(wow[index]),
              
            ),
          );
        },
        itemCount: wow.length,
      ),
    );
  }
}
