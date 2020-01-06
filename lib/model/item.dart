import 'package:flutter/cupertino.dart';

class Item {
  String name;
  String image;
  int vote;
  String address;
  String phone;
  Item(
      {@required this.name,
      @required this.image,
      @required this.vote,
      @required this.address,
      @required this.phone});
}
