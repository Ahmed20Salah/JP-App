import 'package:flutter/cupertino.dart';

class PolicyText extends StatelessWidget {
  final String text;
  PolicyText(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 8, left: 8),
            width: 10,
            height: 10.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff9A9898)),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60.0,
            child: Text(
              text,
              style: TextStyle(color: Color(0xff9A9898)),
            ),
          ),
        ],
      ),
    );
  }
}
