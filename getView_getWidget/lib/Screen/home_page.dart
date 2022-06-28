// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/count_controller.dart';

class SimpleHomePage extends GetWidget<CountController> {
  @override
  Widget build(BuildContext context) {
    Get.create(() => CountController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('getview_getwidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              child: Text('Increment'),
              onPressed: () {
                print(controller.hashCode);
                controller.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}
