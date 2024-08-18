import 'package:flutter_application_provider/home_page.dart';
import 'package:flutter_application_provider/navigation_test.dart';
import 'package:flutter_application_provider/navigation2_test2.dart';
import 'package:get/get.dart';

class Routes {
  static const String home = '/home';
  static const String navigation = '/navigation';
  static const String navigation2 = '/navigation2';

  static final List<GetPage> pages = [
    GetPage(name: home, page: () => const MyHomePage(title: 'Home Page')),
    GetPage(name: navigation, page: () => const NavigationPage()),
    GetPage(name: navigation2, page: () => NavigationPage2()),
  ];
}
