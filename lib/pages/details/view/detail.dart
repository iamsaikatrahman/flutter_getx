import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_service.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Get.back();
            //  print(apiService.fetchTextFromApi());
            print(homeController.count);
          },
        ),
      ),
    );
  }
}
