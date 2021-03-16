import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/details/binding/detail_binding.dart';
import 'package:flutter_getx/pages/details/view/detail.dart';
import 'package:flutter_getx/pages/home/binding/home_binding.dart';
import 'package:flutter_getx/pages/home/view/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
            name: "/home", page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(
            name: "/detial",
            page: () => DetailScreen(),
            binding: DetailsBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
