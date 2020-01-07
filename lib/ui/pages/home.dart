import 'package:flutter/material.dart';
import 'package:jp/ui/widgets/appbar.dart';
import 'package:jp/ui/widgets/drewar.dart';
import 'package:jp/ui/widgets/notification_bar.dart';
import 'package:jp/ui/widgets/search.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final mainColor = Color(0xffF2CB3B);
  final secColor = Color(0xff2D2D2D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerDesgin(),
      ),
      body: ListView(
        children: <Widget>[
          NotificationBar(),
          Appbar('الرئيسية'),
          Search(),
          _body()
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                _category(context, mainColor, 'assets/dish.png', 'مطاعم',
                    secColor, Search()),
                SizedBox(
                  height: 64,
                ),
                _category(context, secColor, 'assets/medicine.png', 'صيدليات',
                    mainColor, Search()),
                SizedBox(
                  height: 64,
                ),
                _category(context, mainColor, 'assets/flower.png', 'ورد',
                    secColor, Search())
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 130,
                ),
                _category(context, secColor, 'assets/coffee-cup.png', 'كافيهات',
                    mainColor, Search()),
                SizedBox(
                  height: 85,
                ),
                _category(context, mainColor, 'assets/shopping-cart.png',
                    'سوبر ماركت', secColor, Search()),
                SizedBox(
                  height: 85,
                ),
                _category(context, secColor, 'assets/file.png', 'اخري',
                    mainColor, Search())
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _category(context, Color color, String image, String text,
      Color textColor, Widget scrren) {
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(100.0)),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100.0)),
        width: 150.0,
        height: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 25, color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
