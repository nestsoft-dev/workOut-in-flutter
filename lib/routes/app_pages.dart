// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import '../core.dart';
import '../pages/register.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () =>  WelcomeView(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () =>  AboutView(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () =>  LoginView(),
    ),
    //Register screen
     GetPage(
      name: Routes.LOGIN,
      page: () => Register(),
    ),
  ];
}
