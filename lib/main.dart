import 'package:ag_inv/Pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
/*    Map<int, Color> color =
    {
      50:Color.fromRGBO(255,255,255, .1),
      100:Color.fromRGBO(255,255,255, .2),
      200:Color.fromRGBO(255,255,255, .3),
      300:Color.fromRGBO(255,255,255, .4),
      400:Color.fromRGBO(255,255,255, .5),
      500:Color.fromRGBO(255,255,255, .6),
      600:Color.fromRGBO(255,255,255, .7),
      700:Color.fromRGBO(255,255,255, .8),
      800:Color.fromRGBO(255,255,255, .9),
      900:Color.fromRGBO(255,255,255, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);*/
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

