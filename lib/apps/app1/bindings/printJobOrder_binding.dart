import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/PrintJobOrder_controller.dart';


class PrintJobOrderBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PrintJobOrderController>(() => PrintJobOrderController(
    ));
  }
}