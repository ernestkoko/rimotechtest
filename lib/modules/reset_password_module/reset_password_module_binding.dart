import 'package:get/get.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_module_controller.dart';
import 'package:rimotechtest/modules/reset_password_module/reset_password_provider.dart';

class ResetPasswordModuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordModuleController(ResetPasswordProvider()));
  }
}
