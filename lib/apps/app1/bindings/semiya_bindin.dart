import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Semiya_controller.dart';


class SemiyaBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SemiyaController>(() => SemiyaController(
    ));
  }
}