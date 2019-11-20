import 'package:ag_inv/Pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    Map<int, Color> color =
//    {
//      50:Color.fromRGBO(255,255,255, .1),
//      100:Color.fromRGBO(255,255,255, .2),
//      200:Color.fromRGBO(255,255,255, .3),
//      300:Color.fromRGBO(255,255,255, .4),
//      400:Color.fromRGBO(255,255,255, .5),
//      500:Color.fromRGBO(255,255,255, .6),
//      600:Color.fromRGBO(255,255,255, .7),
//      700:Color.fromRGBO(255,255,255, .8),
//      800:Color.fromRGBO(255,255,255, .9),
//      900:Color.fromRGBO(255,255,255, 1),
//    };
//    MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.red, fontFamily: 'Raleway'
      ),
      home: new FeedPage(title: 'My Feed'),
    );
  }
}

class FeedPage extends StatefulWidget {
  FeedPage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>{
  @override
  Widget build(BuildContext context) {
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title,style: TextStyle(color: Colors.white)),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list, color: Colors.white),
          onPressed: () {},
        )
      ],
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58,66,86,1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {}
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.white),
              onPressed: () {}
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {}
            )
          ],
        )
      )
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 55, 55, 1.0),
      appBar: topAppBar,
      bottomNavigationBar: makeBottom,
    );
    
  }

  
}