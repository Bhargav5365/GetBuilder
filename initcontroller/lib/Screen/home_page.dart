import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/count_controller.dart';

class SimpleHomePage extends StatelessWidget {
  SimpleHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Init Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetBuilder<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 38),
                  );
                }),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: () {
                Get.find<MyController>().increment();
              },
              child: Text('Increment'),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: () {
                Get.find<MyController>().decrement();
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
