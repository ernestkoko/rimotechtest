import 'package:get/get.dart';
import 'package:rimotechtest/modules/map_module/map_module_controller.dart';
import 'package:rimotechtest/modules/map_module/map_module_provider.dart';

class MapModuleBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>MapModuleController(MapModuleProvider()));
  }

}