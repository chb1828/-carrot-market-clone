import 'dart:async';

import 'package:flutter/material.dart';
import 'package:market_clone/nearby/changeString.dart';

class NearBy extends StatefulWidget {
  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ChangeString(),
          SizedBox(height: 30),
          section1,
        ],
      ),
    ));
  }
  
  Widget section1 = Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/house.png',width: 300,height: 130)
          ],
        ),
        SizedBox(height: 30,)
      ],
    ),
  );

}


