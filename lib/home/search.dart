import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final topTab = new TabBar(tabs: <Tab>[
    new Tab(text: "중고거래"),
    new Tab(text: "동네정보"),
    new Tab(text: "사람")
  ],
    unselectedLabelColor: Colors.black.withOpacity(0.3),
    indicatorColor: Colors.black,labelColor: Colors.black,);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                  color: Colors.black
              ),
              title: Container(
                height: 40.0,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black26,
                      hintStyle: TextStyle(fontSize: 17,height: 0.5),
                      suffixIcon: Icon(Icons.search),
                      contentPadding: const EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0)
                          )
                      ),
                      hintText: "검색어를 입력하세요."),
                ),
              ),
              bottom: topTab
          ),
          body: TabBarView (
            children: [
              Center(
                child: Text("0"),
              ),
              Center(
                child: Text("1"),
              ),
              Center(
                child: Text("2"),
              )
            ],
          )
      ),
    );
  }
}