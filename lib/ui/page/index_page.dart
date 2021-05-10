import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation_bar/controller/index_controller.dart';

class IndexPage extends GetView<IndexController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 0.5, color: Colors.grey))),
          child: Obx(() => BottomNavigationBar(
              backgroundColor: Colors.white,
              items: controller.items,
              type: BottomNavigationBarType.shifting,
              currentIndex: controller.tabIndex.value,
              elevation: 0,
              iconSize: 24,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              onTap: (index) {
                controller.tabIndex.value = index;
                controller.pageController?.jumpToPage(index);
              })),
        ),
        body: PageView(
            controller: controller.pageController,
            children: controller.pages,
            physics: NeverScrollableScrollPhysics()));
  }
}
