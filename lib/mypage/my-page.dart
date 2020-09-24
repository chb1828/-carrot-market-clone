import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsIconTheme: IconThemeData(
              size: 30.0,
              color: Colors.black,
              opacity: 10.0
          ),
          backgroundColor: Colors.white,
          title: Text("나의 당근",style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
/*                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search())
                    );*/
                  },
                  child: Icon(
                    Icons.settings,
                    size: 26.0,
                  ),
                )
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text(
                  '로그인 영역',
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '판매내역,구매내역,관심목록',
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    child:
                    Column(
                      children: [
                        RaisedButton(
                          child: Text("네 동네 설정"),
                        ),
                      ],
                    )
                  )
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}