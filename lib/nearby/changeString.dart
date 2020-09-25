import 'dart:async';
import 'package:flutter/material.dart';


class SimpleClock extends StatefulWidget {
  _SimpleClockState createState() => _SimpleClockState();
}
class _SimpleClockState extends State<SimpleClock> {
  String _now;
  Timer _everySecond;

  @override
  void initState() {
    super.initState();
    List<String> _stringData = ["머리 잘하는 곳","저렴한 네일샵","원데이 클래스","배송가능 용달","인테리어 서비스","가볼만한 카페"];
    _now = _stringData[0];
    int _count = 1;
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!mounted) return;
      if(_count < _stringData.length)  {
        setState(() {
          _now = _stringData[_count];
          _count++;
        });
      }else {
        setState(() {
          _count = 0;
          _now = _stringData[_count];
          _count++;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            child: Column(
              children: [
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("영통동 근처 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                        Text(_now,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.orange),)
                      ],
                    )),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("찾고 계신가요?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                      ],
                    )),
              ],
            )));

  }
}