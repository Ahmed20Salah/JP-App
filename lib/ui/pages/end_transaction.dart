import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/notification_bar.dart';

class EndTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NotificationBar(),
            Appbar('نهاية الرحلة'),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: MediaQuery.of(context).size.height - 80.0,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100.0,),
                    Container(
                      child: Image.asset('assets/right.png'),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      'تم التسليم بطريقة صحيحة فى الوقت المطلوب',
                      style: TextStyle(
                        color: Color(0xff9A9898),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 100.0,),
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 60,
                        height: 50.0,
                        color: Color(0xff2D2D2D),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'انهاء الرحلة',
                            style: TextStyle(fontSize: 20.0 , color: Color(0xffF2CB3B)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
