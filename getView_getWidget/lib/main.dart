import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screen/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'getview_getwidget',
      home: SimpleHomePage(),
    );
  }
}
