import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SliverBar extends StatefulWidget {
  @override
  _SliverBarState createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {
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
              centerTitle: true,
              title: const Text(
                'SliverAppBar',
                style: TextStyle(backgroundColor: Colors.blue),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://miro.medium.com/max/2560/1*1orxIbVfgZa4mB_qEL17Yg.jpeg',
                    fit: BoxFit.fill,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
            ]),
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
