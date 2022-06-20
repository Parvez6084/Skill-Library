import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:skill_library/views/pages/search_page/searchPage.dart';
import '../home_page/homePage.dart';


class DashBoardPageController extends GetxController {
  static DashBoardPageController get to => Get.find();
  var currentIndex = 0.obs;
  final pages = [HomePage(), ScanPage(),ScanPage(),ScanPage(),ScanPage(),];

  Widget get currentPage => pages[currentIndex()];

  changePage(int index) {
    currentIndex.value = index;
  }


}
