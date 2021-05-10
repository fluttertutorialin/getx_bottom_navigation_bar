import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "GetXProject",
        debugShowCheckedModeBanner: false,
        enableLog: true,
        initialRoute: AppRoutes.main,
        getPages: AppRoutes.allPages,
        unknownRoute: AppRoutes.getNotFoundPage(),
        routingCallback: (value) {});
  }
}
