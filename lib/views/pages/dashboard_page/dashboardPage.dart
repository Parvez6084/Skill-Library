
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboardPageController.dart';

class DashBoardPage extends GetView<DashBoardPageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Cards'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Scan'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pinkAccent,
          onTap: controller.changePage,
          selectedIconTheme: const IconThemeData(size: 28) ,
          unselectedItemColor: Colors.black54,
        ),
      ),
    );
  }
}
