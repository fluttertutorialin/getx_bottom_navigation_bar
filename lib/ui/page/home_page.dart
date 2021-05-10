import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
   return Center(child: Container(child: Text('Home')));
  }
}