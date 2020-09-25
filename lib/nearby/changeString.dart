import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class ChangeString extends StatefulWidget {
  _SimpleClockState createState() => _SimpleClockState();
}
class _SimpleClockState extends State<ChangeString> {
  
  //더미 데이터
  List<String> _stringData = ["머리 잘하는 곳","저렴한 네일샵","원데이 클래스","배송가능 용달","인테리어 서비스","가볼만한 카페"];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            child: Column(
              children: [
                Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("영통동 근처 ",style: TextStyle(fontSize: 20.0)),
                        RotateAnimatedTextKit(
                          duration: Duration(seconds: 3),
                          onTap: () {
                            print("Tap Event");
                          },
                          isRepeatingAnimation: true,
                          text: _stringData,
                          // alignment: Alignment(1.0, 0.5),
                          textStyle: TextStyle(fontSize: 28.0, fontFamily: "Horizon",color: Colors.orange,fontWeight: FontWeight.bold),
                        ),
                        //Text(_now,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.orange),)
                      ],
                    )),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("찾고 계신가요?",style: TextStyle(fontSize: 18.0)),
                      ],
                    )),
              ],
            )));

  }
}