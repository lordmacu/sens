import 'package:get/get.dart';
import 'package:sens/apps/apliplast/controllers/PrintJobOrder_controller.dart';


class PrintJobOrderBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PrintJobOrderController>(() => PrintJobOrderController(
    ));
  }
}