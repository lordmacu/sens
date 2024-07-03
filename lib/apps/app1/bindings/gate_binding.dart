import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Gate_controller.dart';


class GateBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<GateController>(() => GateController(
    ));
  }
}