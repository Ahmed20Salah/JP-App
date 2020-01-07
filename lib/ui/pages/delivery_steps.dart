import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/notification_bar.dart';

class DeliverySteps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DeliveryStepsState();
  }
}

class _DeliveryStepsState extends State<DeliverySteps> {
  final Color secColor = Color(0xff2D2D2D);
  final Color mainColor = Color(0xffF2CB3B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NotificationBar(),
            Appbar('خطوات التسليم'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: MediaQuery.of(context).size.height -80.0 ,
              child: ListView(
                children: <Widget>[
                  _title('طلبك من مطعم الرايق'),
                  _orderDetails(),
                  _title('اسم الكابتن'),
                  _captinName('محمد على محمد'),
                  _title('طريق التوصيل الان'),
                  _grttingOrder(),
                  _deliverOrder(),
                  _deliverd()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        title,
        style: TextStyle(fontSize: 15, color: secColor),
      ),
    );
  }

  Widget _orderDetails() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      constraints: BoxConstraints(minHeight: 120.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff707070)),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        'علبة كشرى',
        style: TextStyle(color: Color(0xff9A9898)),
      ),
    );
  }

  Widget _captinName(title) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 15, color: Color(0xff707070)),
          ),
          InkWell(
            child: Container(
              height: 30.0,
              child: Image.asset(
                'assets/phone.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _statusBar(double avg) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, right: 10, left: 10),
      width: MediaQuery.of(context).size.width - 160.0,
      child: Column(
        children: <Widget>[
          Text('في الطريق الي طلبك' , style: TextStyle(color: Color(0xff9A9898)),) ,
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 7.0,
                decoration: BoxDecoration(
                    color: secColor, borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 160) * avg,
                height: 7.0,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _grttingOrder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            child: Image.asset('assets/captin_icon.png'),
          ),
          _statusBar(3/10),
          Container(
            width: 50.0,
            height: 40.0,
            child: Image.asset('assets/box.png'),
          ),
        ],
      ),
    );
  }

  Widget _deliverOrder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            child: Image.asset('assets/captin_icon.png'),
          ),
          _statusBar(5/100),
          Container(
            width: 50.0,
            height: 40.0,
            child: Image.asset('assets/person.png'),
          ),
        ],
      ),
    );
  }

  Widget _deliverd(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 200.0,
            height: 100.0,
            child: Image.asset('assets/deliverd.png'),
          ),
          Text('تم التسليم' , style: TextStyle(fontSize: 25 , color: Color(0xff9A9898)),)
        ],
      ),
    );
  }
}
