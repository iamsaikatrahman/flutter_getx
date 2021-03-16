import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_service.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "This is home screen",
            //   style: TextStyle(
            //     fontSize: 24,
            //   ),
            // ),
            Obx(() => Text(
                  "${homeController.count}",
                  style: TextStyle(fontSize: 24),
                )),
            FlatButton(
              onPressed: () {
                homeController.increment();
                // Get.to(() => DetailScreen());
                // Get.toNamed("/detial");
                // print(apiService.fetchTextFromApi());
              },
              child: Text('Increment'),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                // homeController.increment();
                // Get.to(() => DetailScreen());
                Get.toNamed("/detial");
                // print(apiService.fetchTextFromApi());
              },
              child: Text('Go to detail'),
              color: Colors.black,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
