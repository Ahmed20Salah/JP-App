import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/notification_bar.dart';
import 'package:jp/ui/widgets/policy_text.dart';
import 'package:jp/ui/widgets/search.dart';

class Terms extends StatelessWidget {
  final List<String> _data = [
    'غالباً ما نصادف في جملة ما أكثر من نوع لانتقال الحرارة. في انتقال الحرارة',
    'غالباً ما نصادف في جملة ما أكثر من نوع لانتقال الحرارة. في انتقال الحرارة',
    'غالباً ما نصادف في جملة ما أكثر من نوع لانتقال الحرارة. في انتقال الحرارة'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NotificationBar(),
            Appbar('الشروط و الاحكام'),
            Search(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: MediaQuery.of(context).size.height - 80.0,
              child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        PolicyText(_data[index]),
                        index == _data.length -1
                            ? Container()
                            : Divider(
                                color: Color(0xffC9C9C9),
                                thickness: 2,
                              )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
