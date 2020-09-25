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
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          SimpleClock()
        ],
      ),
    ));
  }
}


