

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/views/pages/search_page/searchPageController.dart';

class ScanPage extends GetView<ScanPageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8),
        child: const Center(
          child: Text('No Data', style: TextStyle(fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}
