import 'package:get/get.dart';
import 'package:sanberappflutter/Tugas10/bottomNavBar.dart';
import 'package:sanberappflutter/auth/page/login_page.dart';
import 'package:sanberappflutter/auth/page/register_page.dart';
import 'package:sanberappflutter/routes/app_routes_named.dart';
import 'package:sanberappflutter/view/get_started_page.dart';
import 'package:sanberappflutter/view/home_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.getStartedPage, page: () => GetStartedPage()),
    GetPage(name: AppRoutesNamed.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutesNamed.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.homePage, page: () => HomePage()),
    GetPage(name: AppRoutesNamed.buttomNavBar, page: () => Buttomnavbar()),
  ];
}
