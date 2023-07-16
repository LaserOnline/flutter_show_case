import 'package:get/get.dart';
import '../home/home.dart';

// * Login
import '../../template/login/login.dart';
import '../../template/login/components/show_case_login_01/ui/show_case_login_01.dart';
import '../../template/login/components/show_case_login_02/ui/show_case_login_02.dart';
import '../../template/login/components/show_case_login_03/ui/show_case_login_03.dart';
// * Login

// * Bottom
import '../../template/bottom/bottom.dart';

// * Bottom

// * ScreenFailed
import '../../template/failed/failed.dart';
import '../../template/failed/components/show_case_failed_01/show_case_failed_01.dart';
import '../../template/failed/components/show_case_failed_02/show_case_failed_02.dart';
import '../../template/failed/components/show_case_failed_03/show_case_failed_03.dart';
// * ScreenFailed

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeShowCase(),
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
    GetPage(
      name: '/login02',
      page: () => ShowCaseLogin02(),
    ),
    GetPage(
      name: '/login03',
      page: () => ShowCaseLogin03(),
    ),
    // * Login

    // * Bottom
    GetPage(
      name: '/bottom',
      page: () => BottomPage(),
    ),
    // * Bottom

    // * Failed
    GetPage(
      name: '/failed',
      page: () => ScreenFailed(),
    ),
    GetPage(
      name: '/failed01',
      page: () => ShowCaseFailed01(),
    ),
    GetPage(
      name: '/failed01',
      page: () => ShowCaseFailed02(),
    ),
    GetPage(
      name: '/failed01',
      page: () => ShowCaseFailed03(),
    ),
    // * Failed
  ];
}
