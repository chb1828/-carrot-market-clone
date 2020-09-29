import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_clone/do/product.dart';
import 'package:market_clone/home/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin,SingleTickerProviderStateMixin {

  ScrollController _scrollViewController;
  TabController _tabController;
  TabBar topTab;

  @override
  void initState() {
     super.initState();
    _tabController = new TabController(vsync: this, length: 2);

     topTab = new TabBar(tabs: <Tab>[
       new Tab(text: "중고거래"),
       new Tab(text: "동네생활")
     ],
       controller: _tabController,
       unselectedLabelColor: Colors.black.withOpacity(0.3),
       indicatorColor: Colors.black,labelColor: Colors.black,);
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //더미 데이터
  List<Product> products = [
    Product(Image.asset('assets/images/image1.jpg',width: 130,height: 130),"발렌시아가 신발","경기도 수원시 영통구",300000),
    Product(Image.asset('assets/images/image2.jpg',width: 130,height: 130),"나이키 신발","경기도 수원시 권선구",130000),
    Product(Image.asset('assets/images/image3.jpg',width: 130,height: 130),"아디다스 신발","경기도 수원시 팔달구",230000),
    Product(Image.asset('assets/images/image4.jpg',width: 130,height: 130),"구찌 신발","경기도 수원시 장안구",400000),
    Product(Image.asset('assets/images/image5.jpg',width: 130,height: 130),"퓨마 신발","경기도 수원시 팔달구",80000)
  ];


  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actionsIconTheme: IconThemeData(
                    size: 30.0,
                    color: Colors.black,
                    opacity: 10.0
                ),
                backgroundColor: Colors.white,
                title: Text("영통동",style: TextStyle(color: Colors.black)),
                actions: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Search())
                          );
                        },
                        child: Icon(
                          Icons.search,
                          size: 26.0,
                        ),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                            Icons.notifications_none
                        ),
                      )
                  ),
                ],
                pinned: true,
                floating: true,
                bottom: topTab,
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: products.length,
                itemBuilder: (context,index){
                  return ProductTile(products[index]);
                },
              ),
              Center(
                child: Text("준비중"),
              )
            ],
          ),
        ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

