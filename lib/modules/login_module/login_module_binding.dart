import 'package:get/get.dart';
import 'package:rimotechtest/modules/login_module/login_module_controller.dart';
import 'package:rimotechtest/modules/login_module/login_module_provider.dart';

class LoginModuleBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>LoginController(LoginProvider()));
  }

}