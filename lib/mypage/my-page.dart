import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      loginSection,
                      lineSection,
                      buttonSection,
                    ],
                  ),
                ),
                Card(
                  child: menuSection1,
                ),
                Card(
                  child: menuSection2,
                ),
                Card(
                  child: menuSection3,
                )
              ],
            )
          ],
        ),
      )

    );
  }

  Widget lineSection = Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.black12))
    ),
  );

  Widget loginSection = Container(
    padding: const EdgeInsets.all(18),
    child: Column(
      children: [
        Row(
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
                  child: Text("로그인 하기",style: TextStyle(color: Colors.orange),),
                )
            ),
          ],
        ),
      ],
    )
  );

  
  Widget buttonSection = Container(
    padding: const EdgeInsets.all(18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _BuildButtonColumn(Icons.event_note, '판매내역'),
        _BuildButtonColumn(Icons.shopping_basket, '구매내역'),
        _BuildButtonColumn(Icons.favorite, '관심목록'),
      ],
    ),
  );

  Widget menuSection1 =  Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.place,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("내 동네 설정"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.all_out,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("동네 인증하기"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("키워드 알림"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.filter_9_plus,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("모아보기"),
                )
              ]
          ),
        ],
      )
  );

  Widget menuSection2 =  Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.edit,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("동네생활 글"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.chat,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("동네생활 댓글"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.star_border,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("동네생활 주제 목록"),
                )
              ]
          ),
        ],
      )
  );

  Widget menuSection3 =  Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.mail,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("친구초대"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.share,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("당근마켓 공유"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("공지사항"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.headset_mic,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("자주 묻는 질문"),
                )
              ]
          ),
          SizedBox(height: 15),
          Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.settings,
                  size: 26.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("앱 설정"),
                )
              ]
          ),
        ],
      )
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
        Icon(icon,color: Colors.orange,),
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