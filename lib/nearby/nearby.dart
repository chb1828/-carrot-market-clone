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
                children: [
                  Text("하이")
                ],
              ),
            ),
          ],
        )
    );
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
        style: TextStyle(
          fontSize: 20.0,
          height: 1.0,
          color: Colors.white
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(fontSize: 17, height: 0.5),
            hintText: "내 근처에서 주변 가게를 찾아보세요",
            prefixIcon: Icon(Icons.search),
            contentPadding: const EdgeInsets.all(20.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black45,style: BorderStyle.solid,width: 1)
            ),
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(const Radius.circular(5.0))
            )
        ),
      )
  );

}


