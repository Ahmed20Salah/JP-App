import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff2D2D2D),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                color: Colors.grey,
                width: 1.0,
                height: 24.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 180,
                height: 35.0,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 4),
                  hintText: 'البحث',
                  hintStyle: TextStyle(),
                    border: InputBorder.none),
                ),
              ),
            ],
          ),
        ));
  }
}
