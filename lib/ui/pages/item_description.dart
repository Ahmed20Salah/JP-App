import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp/model/item.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/drewar.dart';
import 'package:jp/ui/widgets/search.dart';

class ItemDescription extends StatelessWidget {
  final Color secColor = Color(0xff9A9898);
  final Color mainColor = Color(0xff2D2D2D);

  final Item item;
  ItemDescription({@required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerDesgin(),
      ),
      body: Column(children: <Widget>[
        Container(
          color: Color(0xffF2CB3B),
          height: 24.0,
        ),
        Appbar(item.name),
        Search(),
        Container(
            height: MediaQuery.of(context).size.height - 145.0,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                _image('assets/back.png'),
                _title(item.name),
                _star(item.vote),
                _address(item.address),
                _phone(item.phone),
                _map(),
                _description(),
                _sendButton(context)
              ],
            ))
      ]),
    );
  }

  Widget _image(String image) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      height: 170,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );
  }

  Widget _title(String title) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(fontSize: 25, color: mainColor),
      ),
    );
  }

  Widget _star(vote) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      height: 20.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, int index) {
          return Icon(
            Icons.star,
            size: 30.0,
            color: index < vote ? mainColor : secColor,
          );
        },
      ),
    );
  }

  Widget _address(adde) {
    return Container(
      margin: EdgeInsets.only(right: 20.0, top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                border: Border.all(color: secColor),
                borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.home,
              color: secColor,
              size: 24,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            adde,
            style: TextStyle(color: secColor, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _phone(phone) {
    return Container(
      margin: EdgeInsets.only(right: 20.0, top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                border: Border.all(color: secColor),
                borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.phone_in_talk,
              color: secColor,
              size: 24,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            phone,
            style: TextStyle(color: secColor, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _map() {
    return Container(
      margin: EdgeInsets.only(right: 20.0, top: 10),
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
            'موقعنا علي الخريطة ',
            style: TextStyle(color: secColor, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _description() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      constraints: BoxConstraints(minHeight: 125),
      child: Text(
        'تمتلك إناث أسماك القرش جلوداً أكثر سمكاً من الذكور. لا يخزِّن سنام الجمل الماء إنما يخزّن الدهون، أما الماء فيتم تخزينه في مجرى الدم. يوجد اضطراب عصبي يدعى"عمى تَعَرُّف الوجوه" (بالإنجليزية: Prosopagnosia)، بحيث يَصعُب على المريض التّعًرُف على وجوه الأشخاص حتى المقربين منهم.',
        style: TextStyle(fontSize: 15, color: secColor),
        textAlign: TextAlign.right,
        softWrap: true,
      ),
    );
  }

   Widget _sendButton(context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40.0,
      margin: EdgeInsets.symmetric(vertical: 20.0  ,horizontal: 20.0) ,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: mainColor,
          ),
          height: 50.0,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'طلبك',
              style: TextStyle(fontSize: 20.0, color: Color(0xffF2CB3B)),
            ),
          ),
        ),
      ),
    );
  }
}
