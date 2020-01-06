import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/drewar.dart';

class Order extends StatelessWidget {
  final mainColor = Color(0xffF2CB3B);
  final secColor  = Color(0xff9A9898)  ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerDesgin(),
      ),
      body: SingleChildScrollView(child: Column(
        children: <Widget>[
          Container(
            color: Color(0xffF2CB3B),
            height: 24.0,
          ),
          Appbar('طلبك'),
          Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: MediaQuery.of(context).size.height - 140,
            child: ListView(
              children: <Widget>[
                _title('اكتب طلبك'),
                _orderField(context),
                _deliveryBar(),
                _orderDeliveryAddrssField(context),
                _map(),
                _sendButton(context)
              ],
            ),
          )
        ],
      ),
    ),) ;
  }

  Widget _title(String title) {
    return Container(
      margin: EdgeInsets.only( bottom: 10, top: 10),
      alignment: Alignment.topRight,
      child: Text(
        title,
        style: TextStyle(fontSize: 18 , color: secColor),
      ),
    );
  }

  Widget _orderField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width - 40.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Color(0xff707070))),
        child: TextFormField(
          minLines: 3,
          maxLines: 6,
          style: TextStyle(fontSize: 18 , color: Color(0xff9A9898)),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }


  Widget _deliveryBar() {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _title('إكتب عنوانك'),
          InkWell(
            child: Container(
              height: 30.0,
              child: Image.asset(
                'assets/file.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
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
            border: Border.all(color: Color(0xff707070))),
        child: TextFormField(
          style: TextStyle(fontSize: 18 , color: Color(0xff9A9898)),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 18),
              hintText: 'شارع الرياض - شقة ',
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget _map() {
    return Container(
      margin: EdgeInsets.only( top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 28,
            height: 28,
            child: Image.asset(
              'assets/location.png',
              fit: BoxFit.cover,
              height: 20,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'حدد موقعك علي الخريطه',
            style: TextStyle(color: secColor, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _sendButton(context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60.0),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xff2D2D2D),
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
