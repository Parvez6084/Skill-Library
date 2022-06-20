
import 'package:get/get.dart';

import '../home_page/homePageController.dart';
import '../search_page/searchPageController.dart';
import 'dashboardPageController.dart';

class DashBoardPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardPageController>(() => DashBoardPageController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<ScanPageController>(() => ScanPageController());

  }
}
