import 'package:flutter_getx/pages/home/controller/home_controller.dart';
import 'package:flutter_getx/services/api_service.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
