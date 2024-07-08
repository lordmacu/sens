import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Extrusion_controller.dart';

class ExtrusionReportBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExtrusionController>(() => ExtrusionController(
    ));
  }
}