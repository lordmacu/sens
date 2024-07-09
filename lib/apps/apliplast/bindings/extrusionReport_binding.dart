import 'package:get/get.dart';
import 'package:sens/apps/apliplast/controllers/extrusion_controller.dart';

class ExtrusionReportBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExtrusionController>(() => ExtrusionController(
    ));
  }
}