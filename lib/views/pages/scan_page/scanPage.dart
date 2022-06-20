

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/views/pages/scan_page/scanPageController.dart';

import '../../../consts/app_fonts.dart';

class ScanPage extends GetView<ScanPageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Scan',
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: AppFonts.yesteryear,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: const Center(
          child: Text('No Data', style: TextStyle(fontWeight: FontWeight.bold),)
        ),
      ),
    );
  }
}
