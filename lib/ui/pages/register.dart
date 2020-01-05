import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final mainColor = Color(0xffF2CB3B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2D2D2D),
        title: Text(
          'التسجيل',
          style: TextStyle(
            color: Color(0xffF2CB3B),
          ),
        ),
        centerTitle: true,
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: mainColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          _title('الاسم'),
          _nameField(context),
          _title('رقم الجوال'),
          _phoneField(context),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 30.0, top: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'سوف يصلك رسالة فية الكود ع الجوال ',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(height: 50.0,),
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width - 
              60,
              height: 50.0,
              color: mainColor,
              child: Container(
                alignment: Alignment.center,
                child: Text('موافق'  ,style: TextStyle(fontSize: 20.0),),
              ),
            ),
          ),
          SizedBox(height: 80.0,),
          Container(
            width: 100.0,
            height: 100.0,
            child: Image.asset('assets/logo_mid.png'),
          )
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Container(
      margin: EdgeInsets.only(right: 30.0, bottom: 6, top: 20),
      alignment: Alignment.topRight,
      child: Text(
        title,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _nameField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width - 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: mainColor)),
        child: TextFormField(
          style: TextStyle(fontSize: 26),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }

  Widget _phoneField(context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width - 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: mainColor)),
        child: TextFormField(
          style: TextStyle(fontSize: 26),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 2.0, right: 5),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
