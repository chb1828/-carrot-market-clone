import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_clone/chatting/chatting.dart';
import 'package:market_clone/home/home.dart';
import 'package:market_clone/mypage/my-page.dart';
import 'package:market_clone/nearby/nearby.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _page = [
    Home(),
    NearBy(),
    null,
    Chatting(),
    MyPage()
  ];
  final pageController = PageController();

  Widget buildBottomSheet(BuildContext context) {
    return Container();
  }

  void _onTap(int index) {

    if(index!=2){
      pageController.jumpToPage(index);
    }
    else {
      bottomSheet();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: _page,
        physics: NeverScrollableScrollPhysics(), //슬라이드 비활성화
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("홈")),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), title: Text("내 근처")),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_color), title: Text("글쓰기")),
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("채팅")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("나의 당근"))
          ]),
    );
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  Future bottomSheet() {
    return       showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery
                    .of(context)
                    .viewInsets
                    .bottom),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.shopping_basket,
                              size: 26.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text("중고거래"),
                            )
                          ]
                      ),
                      _lineSection,
                      SizedBox(height: 15),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.person,
                              size: 26.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text("동네생활"),
                            )
                          ]
                      ),
                      _lineSection,
                      SizedBox(height: 15),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.home,
                              size: 26.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text("동네홍보"),
                            )
                          ]
                      ),
                      _lineSection,
                      SizedBox(height: 15)
                    ],
                  ),
                ),
              ));
        });
  }

  Widget _lineSection = Container(
    margin: EdgeInsets.only(top: 5.0),
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.black12))
    ),
  );

}


