import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'consts/app_fonts.dart';
import 'routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skill Library',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      theme: ThemeData(fontFamily: AppFonts.poppins),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
