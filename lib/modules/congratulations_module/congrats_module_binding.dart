
import 'package:get/get.dart';
import 'package:rimotechtest/modules/congratulations_module/congrats_controller.dart';
class CongratsModuleBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CongratsController());
  }

}