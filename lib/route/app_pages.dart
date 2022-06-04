import 'package:get/get.dart';
import 'package:rimotechtest/modules/congratulations_module/congrats_module_binding.dart';
import 'package:rimotechtest/modules/congratulations_module/congratulations_module_page.dart';
import 'package:rimotechtest/modules/landing_module/landing_view.dart';
import 'package:rimotechtest/modules/login_module/login_module_binding.dart';
import 'package:rimotechtest/modules/login_module/login_module_page.dart';
import 'package:rimotechtest/modules/map_module/map_module_binding.dart';
import 'package:rimotechtest/modules/map_module/map_module_page.dart';
import 'package:rimotechtest/modules/new_driver_module/new_driver_module_binding.dart';
import 'package:rimotechtest/modules/new_driver_module/new_driver_module_page.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_module_binding.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_module_page.dart';

import 'app_route.dart';

///The class where all the pages are.
class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => LandingView(),
        transition: Transition.leftToRight),
    GetPage(
        name: Routes.LOGINPAGE,
        page: () => LoginModulePage(),
        binding: LoginModuleBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: Routes.NEWDRIVERPAGE,
        page: () => NewDriverModulePage(),
        binding: NewDriverModuleBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: Routes.CONGRATS,
        page: () => CongratulationsModulePage(),
        binding: CongratsModuleBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: Routes.MAPPAGE,
        page: () => MapMpdulePage(),
        binding: MapModuleBinding(),
        transition: Transition.leftToRight),
    GetPage(
        name: Routes.RESETPASSWORD,
        page: () => ResetPasswordModulePage(),
        binding: ResetPasswordModuleBinding(),
        transition: Transition.leftToRight)
  ];
}
