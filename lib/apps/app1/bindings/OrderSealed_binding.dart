import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/OderSealed_controller.dart';


class OderSealedBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<OderSealedController>(() => OderSealedController(
    ));
  }
}