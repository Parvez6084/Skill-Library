
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Discussion'),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.indigo,
          onTap: controller.changePage,
          selectedIconTheme: const IconThemeData(size: 28) ,
          unselectedItemColor: Colors.black54,
        ),
      ),
    );
  }
}
