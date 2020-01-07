import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/aboutus_text.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/notification_bar.dart';
import 'package:jp/ui/widgets/search.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NotificationBar(),
            Appbar('عن التطبيق'),
            Search(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: MediaQuery.of(context).size.height - 80.0,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        AboutUsText(
                          'عن الشركة',
                          'بين التوصيل والإشعاع الحراري. وفي انتقال الحرارة بالحمل، تُحمل الطاقة الداخلية بين الأجسام من خلال حامل مادي. ففي المواد الصلبة، يتم التوصيل عن طريق الجمع بين ترددات واصطدامات الجزيئات وعن طريق انتشار وتصادمات الفونونات وعن طريق انتشار وتصادمات الإلكترونات الحرة. أما في الغازات والسوائل، يحد التوصيل نتيجة تصادمات وانتشار',
                          TextStyle(
                            fontSize: 25.0,
                            color: Color(0XFF9A9898),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        index == 1
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
