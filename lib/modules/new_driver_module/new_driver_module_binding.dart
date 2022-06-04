import 'package:get/get.dart';
import 'package:rimotechtest/modules/new_driver_module/new_driver_controller.dart';
import 'package:rimotechtest/modules/new_driver_module/new_driver_module_provider.dart';

class NewDriverModuleBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>NewDriverModuleController(NewDriverModuleProvider()));
  }

}