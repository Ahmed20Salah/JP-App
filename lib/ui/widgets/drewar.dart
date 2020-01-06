import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDesgin extends StatelessWidget {
  final mainColor = Color(0xffF2CB3B);
  final secColor = Color(0xff2D2D2D);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secColor,
      padding: EdgeInsets.only(right: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          _dButton('حسابي'),
          _dButton('سياسة الخصوصية'),
          _dButton('الشروط والاحكام'),
          _dButton('الاسئلة الشائعة'),
          _dButton('تواصل معانا'),
          _dButton('عن التطبيق'),
        ],
      ),
    );
  }

  Widget _dButton(String title) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: secColor,
        border: BorderDirectional(
          bottom: BorderSide(color: mainColor),
        ),
      ),
      child: InkWell(
        child: Row(
          children: <Widget>[
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Color(0xff272020),
                  borderRadius: BorderRadius.circular(25)),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: mainColor, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
