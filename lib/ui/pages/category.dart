import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp/model/item.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/search.dart';

class Category extends StatelessWidget {
  final String title;
  final Color mainColor = Color(0xffF2CB3B);
  Category(this.title);
  final Item _testData = Item(
      name: 'مطعم الرايق',
      address: 'بجوار شارع عثمان',
      vote: 3,
      image: 'assets/back.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Appbar(title),
          Search(),
          _item(_testData),
          _item(_testData),
          _item(_testData),
          _item(_testData),
          _item(_testData),
        ],
      ),
    );
  }

  Widget _item(Item item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      height: 125.0,
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(item.image),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(.35), BlendMode.overlay),
            fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            item.name,
            style: TextStyle(fontSize: 20.0, color: mainColor),
          ),
          _star(item.vote),
          _address(item.address)
        ],
      ),
    );
  }

  Widget _star(vote) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      height: 20.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, int index) {
          return Icon(
            Icons.star,
            color: index < vote ? Colors.yellowAccent : Colors.white70,
          );
        },
      ),
    );
  }

  Widget _address(adde) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
                border: Border.all(color: mainColor),
                borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.home,
              color: mainColor,
              size: 15,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            adde,
            style: TextStyle(color: mainColor, fontSize: 15),
          )
        ],
      ),
    );
  }
}
