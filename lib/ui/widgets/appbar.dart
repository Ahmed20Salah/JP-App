import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  Appbar(this._title);
  final Color main = Color(0xffF2CB3B);
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff2D2D2D),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                _menu(context),
                SizedBox(
                  width: 15.0,
                ),
                _notifcationIcon(),
              ],
            ),
          ),
          _screenTitle(),
          Container(
            child: Row(
              children: <Widget>[
                _logo(),
                SizedBox(
                  width: 15.0,
                ),
                _backIcon(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

// logo icon
  Widget _logo() {
    return Container(
      // width: 25.0,
      // height: 25.0,
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //   fit: BoxFit.cover,
      //   image: AssetImage('assets/logo_icon.png'),
      // )
      // ),
      child: Image.asset('assets/logo_icon.png' , fit: BoxFit.cover,),
    );
  }

  // back icon
  Widget _backIcon(context) {
    return Container(
      child: InkWell(
        child: Icon(
          Icons.arrow_forward_ios,
          color: main,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  // screen title
  Widget _screenTitle() {
    return Container(
      child: Text(
        _title,
        style: TextStyle(color: main, fontSize: 22),
      ),
    );
  }

  // notification icon
  Widget _notifcationIcon() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            // width: 20.0,
            // height: 20.0,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage('assets/notification.png'),
            //   ),
            // ),
            child: Image.asset('assets/notification.png'),
          )
        ],
      ),
    );
  }

  Widget _menu(context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Icon(
        Icons.menu,
        color: main,
      ),
    );
  }
}
