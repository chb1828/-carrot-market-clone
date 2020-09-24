import 'package:flutter/material.dart';
import 'package:market_clone/chatting/chatting.dart';
import 'package:market_clone/home/home.dart';
import 'package:market_clone/mypage/my-page.dart';
import 'package:market_clone/writing/writing.dart';
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
    Writing(),
    Chatting(),
    MyPage()
  ];
  final pageController = PageController();

  void _onTap(int index) {
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: _page,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onTap,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("홈")),
            BottomNavigationBarItem(icon: Icon(Icons.location_on), title: Text("내 근처")),
            BottomNavigationBarItem(icon: Icon(Icons.border_color), title: Text("글쓰기")),
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("채팅")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("나의 당근"))
          ]),
    );
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

