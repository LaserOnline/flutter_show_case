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

// * Appbar
import '../../template/appbar/appbar_page.dart';
import '../../template/appbar/show_case_appbar_01/show_case_appbar_01.dart';

// * Appbar

// * Chip
import '../../template/chip/chip.dart';
import '../../template/chip/show_case_chip/ui/show_case_chip01.dart';
// * Chip

// * Slidable
import '../../template/slidable/slidable.dart';
import '../../template/slidable/components/show_case_slidable_01/show_case_slidable_01.dart';
// * Slidable

// * Rive
import '../../template/rive/rive.dart';
import '../../template/rive/components/show_case_rive_01/show_case_rive_01.dart';
import '../../template/rive/components/show_case_rive_02/show_case_rive_02.dart';

// * Rive
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
      name: '/failed02',
      page: () => ShowCaseFailed02(),
    ),
    GetPage(
      name: '/failed03',
      page: () => ShowCaseFailed03(),
    ),
    // * Failed

    // * Appbar
    GetPage(
      name: '/appbar',
      page: () => AppbarPageHome(),
    ),
    GetPage(
      name: '/appbar01',
      page: () => Appbar01(),
    ),
    // * Appbar

    // * Chip
    GetPage(
      name: '/chip',
      page: () => Chip(),
    ),
    GetPage(
      name: '/chip01',
      page: () => ShowCaseChip01(),
    ),
    // * Chip

    // * Slidable
    GetPage(
      name: '/slidable',
      page: () => Slidable(),
    ),
    GetPage(
      name: '/slidable01',
      page: () => ShowCaseSlidable01(),
    ),
    // * Slidable

    // * Rive
    GetPage(
      name: '/rive',
      page: () => RivePage(),
    ),
    GetPage(
      name: '/rive01',
      page: () => ShowCaseRive01(),
    ),
    GetPage(
      name: '/rive02',
      page: () => ShowCaseRive02(),
    ),
    // * Rive
  ];
}
