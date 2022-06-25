import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_srvices/app/controllers/home_controller.dart';

import '../services/increment_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final homeService = Get.find<HomeService>();
    final controller = Get.find<IncrementService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                controller.incrementCount();
              },
              child: const Text(
                "Increment",
              ),
            ),
            Obx(() {
              return Text("Pressed ${homeService.counter} times");
            })
          ],
        ),
      ),
    );
  }
}
