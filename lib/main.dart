import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jp/model/item.dart';
import 'package:jp/ui/pages/about_us.dart';
import 'package:jp/ui/pages/category.dart';
import 'package:jp/ui/pages/common.dart';
import 'package:jp/ui/pages/delivery_steps.dart';
import 'package:jp/ui/pages/end_transaction.dart';
import 'package:jp/ui/pages/home.dart';
import 'package:jp/ui/pages/item_description.dart';
import 'package:jp/ui/pages/order.dart';
import 'package:jp/ui/pages/other.dart';
import 'package:jp/ui/pages/policy.dart';
import 'package:jp/ui/pages/terms.dart';

import 'ui/pages/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Item _testData = Item(
      name: 'مطعم الرايق',
      address: 'بجوار شارع عثمان',
      vote: 3,
      image: 'assets/back.png' , phone: '010989619663');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar'), // Arabic
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Commmon(),
    );
  }
}
