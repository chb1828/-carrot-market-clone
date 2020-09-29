import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_clone/nearby/changeString.dart';

class NearBy extends StatefulWidget {
  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  ChangeString(),
                  SizedBox(height: 20),
                  _imageSection1
                ],
              ),
            ),
            SliverAppBar(
              centerTitle: true,
              pinned: true,
              backgroundColor: Colors.white,
              title: _searchSection,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [_CreateDynamicButton()],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [_categorySection],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [_recommend],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [_blank],
              ),
            ),
          ],
        ));
  }

  Widget _imageSection1 = Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/house.png', width: 300, height: 130)
          ],
        ),
      ],
    ),
  );

  Widget _searchSection = Container(
    height: 40.0,
    child: TextField(
      style: TextStyle(fontSize: 20.0, height: 1.0, color: Colors.white),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(fontSize: 17, height: 0.5),
          hintText: "내 근처에서 주변 가게를 찾아보세요",
          prefixIcon: Icon(Icons.search),
          contentPadding: const EdgeInsets.all(20.0),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black45, style: BorderStyle.solid, width: 1)),
          border: OutlineInputBorder(
              borderRadius:
                  const BorderRadius.all(const Radius.circular(5.0)))),
    ),
  );

  Widget _categorySection = Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "우리동네 이건 어떠세요?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            )
          ],
        ),
        SizedBox(height: 20),
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.person),
                    tooltip: "hire me",
                    onPressed: () => {},
                  ),
                  Text(
                    "동네 구인구직",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.library_books),
                    tooltip: "hire me",
                    onPressed: () => {},
                  ),
                  Text(
                    "과외/클래스 모집",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
            SizedBox(
                width: 80,
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.fastfood),
                      tooltip: "hire me",
                      onPressed: () => {},
                    ),
                    Text(
                      "농수산물",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                )),
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    tooltip: "hire me",
                    onPressed: () => {},
                  ),
                  Text(
                    "부동산",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.directions_car),
                    tooltip: "hire me",
                    onPressed: () => {},
                  ),
                  Text(
                    "중고차/오토바이",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.fiber_smart_record),
                    tooltip: "hire me",
                    onPressed: () => {},
                  ),
                  Text(
                    "전시/공연/행사",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );

  Widget _recommend = Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            Text(
              "이웃들이 추천한 가게를 확인해보세요",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            )
          ],
        )
      ]));

  Widget _blank = Container(
    color: Colors.pink,
    width: 500,
    height: 600,
    child: Text("공백 채우기"),
  );
}

class _CreateDynamicButton extends StatelessWidget {
  //더미 데이터
  final List<String> buttons = [
    "학원",
    "인테리어",
    "영어",
    "카페",
    "공방",
    "속눈썹",
    "피부",
    "에어컨",
    "네일"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
          children: buttons.map((String button) {
        return Padding(
            padding: EdgeInsets.all(5),
            child: ButtonTheme(
              minWidth: 20,
              child: FlatButton(
                color: Colors.black12,
                child: Text(button),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () => {},
              ),
            ));
      }).toList()),
    );
  }
}
