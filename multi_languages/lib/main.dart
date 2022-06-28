import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomePage.dart';
import 'LacaleString.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
