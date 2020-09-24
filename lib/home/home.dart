import 'package:flutter/material.dart';
import 'package:market_clone/product/product.dart';
import 'package:market_clone/home/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin{

  //더미 데이터
  List<Product> products = [
    Product(Image.asset('assets/images/image1.jpg',width: 130,height: 130),"발렌시아가 신발","경기도 수원시 영통구",300000),
    Product(Image.asset('assets/images/image2.jpg',width: 130,height: 130),"나이키 신발","경기도 수원시 권선구",130000),
    Product(Image.asset('assets/images/image3.jpg',width: 130,height: 130),"아디다스 신발","경기도 수원시 팔달구",230000),
    Product(Image.asset('assets/images/image4.jpg',width: 130,height: 130),"구찌 신발","경기도 수원시 장안구",400000)
  ];

  final topTab = new TabBar(tabs: <Tab>[
    new Tab(text: "중고거래"),
    new Tab(text: "동네생활")
  ],
    unselectedLabelColor: Colors.black.withOpacity(0.3),
    indicatorColor: Colors.black,labelColor: Colors.black,);

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child:Scaffold(
          appBar: AppBar(
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
              bottom: topTab),
          body: TabBarView (
            children: [
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    return ProductTile(products[index]);
                  }
              ),
              Center(
                child: Text("1"),
              )
            ],
          )
        )
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

