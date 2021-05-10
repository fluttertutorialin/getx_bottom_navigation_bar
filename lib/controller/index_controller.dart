import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation_bar/ui/page/home_page.dart';
import '../ui/widget/keep_alive_page.dart';
import 'home_controller.dart';

class IndexController extends GetxController {
  RxInt tabIndex = 0.obs;
  late PageController? pageController;

  final List<Widget> pages = [
    keepAliveWrapper(GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return HomePage();
        })),
    keepAliveWrapper(Container()),
    keepAliveWrapper(Container())
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home, color: Colors.blue)),
    BottomNavigationBarItem(
        label: 'Report',
        icon: Icon(Icons.featured_video),
        activeIcon: Icon(Icons.featured_video, color: Colors.blue)),
    BottomNavigationBarItem(
        label: 'Setting',
        icon: Icon(Icons.meeting_room),
        activeIcon: Icon(Icons.meeting_room, color: Colors.blue)),
  ];
  @override
  void onInit() {
    pageController = PageController(initialPage: tabIndex.value);
    super.onInit();
  }
}
