import 'dart:async';

import 'package:flutter/material.dart';
import 'package:market_clone/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: <String,WidgetBuilder>{
        '/RootPage': (BuildContext context) => RootPage()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration,navigationPage);
  }

  void navigationPage () {
    Navigator.of(context).pushReplacementNamed('/RootPage');
  }


  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/carrot.jpg',width: 130,height: 130)
      ),
    );
  }

}
