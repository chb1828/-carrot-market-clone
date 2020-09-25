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
      body: Column(
        children: [
          titleSection,
          buttonSection
        ],
      )
    );
  }


  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/empty_profile.png',width: 75,height: 75)
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text("로그인 하기"),
          )
        ),
      ],
    ),
  );

  
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _BuildButtonColumn(Icons.call, '판매내역'),
        _BuildButtonColumn(Icons.near_me, '구매내역'),
        _BuildButtonColumn(Icons.share, '관심목록'),
      ],
    ),
  );
}

class _BuildButtonColumn extends StatelessWidget {

  _BuildButtonColumn(this.icon, this.label);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

}