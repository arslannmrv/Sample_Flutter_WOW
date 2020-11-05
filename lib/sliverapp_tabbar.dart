import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
      home: SilverAppBarWithTabBar(),
    ));

class SilverAppBarWithTabBar extends StatefulWidget {
  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<SilverAppBarWithTabBar>
    with SingleTickerProviderStateMixin {
  TabController controller;
  _trigger() {
    OnStretchTriggerMessage.showToast('Everything is a widget!');
  }

  String txt1 = "Try it!";
  String txt2 = "Just Try!";

  ListTile buildKey() {
    return ListTile(
      leading: Icon(Icons.favorite, color: Colors.blue),
      title: Text(
        txt1,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.0,
            color: Color.fromRGBO(0, 52, 54, 10)),
      ),
      subtitle: Text(
        txt2,
        style: TextStyle(
            fontFamily: 'Cambria',
            fontSize: 13.0,
            color: Color.fromRGBO(0, 52, 54, 10)),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            expandedHeight: 300.0,
            stretchTriggerOffset: 100,
            onStretchTrigger: () {
              return _trigger();
            },
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.deepOrange,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black12,
              indicator: BubbleTabIndicator(
                indicatorHeight: 30.0,
                indicatorRadius: 20,
                indicatorColor: Colors.deepPurple[800],
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs: [
                Tab(
                  text: 'Example',
                ),
                Tab(
                  text: 'Example',
                ),
              ],
              controller: controller,
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                Column(
                  children: [
                    buildKey(),
                    buildKey(),
                    buildKey(),
                  ],
                ),
                Column(
                  children: [
                    buildKey(),
                    buildKey(),
                    buildKey(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnStretchTriggerMessage {
  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 20);
  }
}
