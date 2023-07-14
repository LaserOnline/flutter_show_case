import 'package:get/get.dart';
import '../home/home.dart';
import '../qrcode/qrcode.dart';
// * Login
import '../../template/login/login_page.dart';
import '../../template/login/show_case_login_01.dart';
// * Login

// * Bottom
import '../../template/bottom/bottom_page.dart';

// * Bottom
class AppRoutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeShowCase(),
    ),
    GetPage(
      name: '/qrocde',
      page: () => Qrcode(),
    ),
    // * Login
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/login01',
      page: () => ShowCaseLogin01(),
    ),
    // * Login
    // * Bottom
    GetPage(
      name: '/bottom',
      page: () => BottomPage(),
    ),
    // * Bottom
  ];
}
