import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class WelcomePageController extends GetxController {

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.offAllNamed(Routes.dashBoardPage);
    });
    super.onInit();
  }

}
