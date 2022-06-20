
import 'package:get/get.dart';

import '../views/pages/dashboard_page/dashboardPage.dart';
import '../views/pages/dashboard_page/dashboardPageBinding.dart';
import '../views/pages/favorite_page/favoritePage.dart';
import '../views/pages/home_page/homePage.dart';
import '../views/pages/scan_page/scanPage.dart';
import '../views/pages/welcome_page/welcomePage.dart';
import '../views/pages/welcome_page/welcomePageBinding.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.dashBoardPage;
  static final routes = [
    GetPage(
      name: Routes.welcomePage,
      page: () => WelcomePage(),
      binding: WelcomePageBinding(),
    ),
    GetPage(
        name: Routes.dashBoardPage,
        page: () => DashBoardPage(),
        binding: DashBoardPageBinding(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => HomePage(),
      binding: DashBoardPageBinding(),
    ),
    GetPage(
      name: Routes.scanPage,
      page: () => ScanPage(),
      binding: DashBoardPageBinding(),
    ),
    GetPage(
      name: Routes.favoritePage,
      page: () => FavoritePage(),
      binding: DashBoardPageBinding(),
    ),
  ];
}
