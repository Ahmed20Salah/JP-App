import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/drewar.dart';
import 'package:jp/ui/widgets/search.dart';

class OtherScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OtherScreenState();
  }
}

class OtherScreenState extends State<OtherScreen> {
  final secColor = Color(0xff2D2D2D);
  final mainColor = Color(0xffF2CB3B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerDesgin(),
      ),
      // backgroundColor: Color(0xffF2CB3B),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xffF2CB3B),
                height: 24.0,
              ),
              Appbar('اخري'),
              Search(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: MediaQuery.of(context).size.height - 145,
                child: ListView(
                  children: <Widget>[
                    _title('طلبك'),
                    _orderNameField(context),
                    _pickBar(),
                    _orderPickAddressField(context),
                    _deliveryBar(),
                    _orderDeliveryAddrssField(context),
                    _clear(),
                    _sendButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pickBar() {
    return Container(
      margin: EdgeInsets.symmetric(),
      padding: EdgeInsets.symmetric(vertical: 0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _title('عنوان الاستلام'),
          InkWell(
            child: Container(
              height: 30.0,
              child: Image.asset(
                'assets/dish.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _deliveryBar() {
    return Container(
      margin: EdgeInsets.symmetric(),
      padding: EdgeInsets.symmetric(vertical: 0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _title('عنوان التسليم'),
          InkWell(
            child: Container(
              height: 30.0,
              child: Image.asset(
                'assets/dish.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 12, top: 12),
      alignment: Alignment.topRight,
      child: Text(
        title,
        style: TextStyle(fontSize: 20, color: secColor),
      ),
    );
  }

  Widget _orderNameField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Color(0xff9A9898))),
        child: TextFormField(
          style: TextStyle(fontSize: 26),
          decoration: InputDecoration(
              hintText: 'جهاز لاب توب',
              hintStyle: TextStyle(fontSize: 18),
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget _orderPickAddressField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Color(0xff9A9898))),
        child: TextFormField(
          style: TextStyle(fontSize: 26),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 18),
              hintText: 'شارع الرياض - شقة ',
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget _orderDeliveryAddrssField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Color(0xff9A9898))),
        child: TextFormField(
          style: TextStyle(fontSize: 26),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 18),
              hintText: 'شارع الرياض - شقة ',
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget _clear() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            height: 30.0,
            width: 70.0,
            decoration: BoxDecoration(
                border: Border.all(color: mainColor),
                borderRadius: BorderRadius.circular(70.0)),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'حذف',
                style: TextStyle(color: mainColor),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _sendButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: secColor,
          ),
          width: MediaQuery.of(context).size.width - 60,
          height: 50.0,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'ارسال',
              style: TextStyle(fontSize: 20.0, color: mainColor),
            ),
          ),
        ),
      ),
    );
  }
}
