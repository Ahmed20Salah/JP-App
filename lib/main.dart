import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jp/ui/pages/category.dart';
import 'package:jp/ui/pages/home.dart';
import 'package:jp/ui/pages/other.dart';

import 'ui/pages/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar'), // English
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OtherScreen(),
    );
  }
}
