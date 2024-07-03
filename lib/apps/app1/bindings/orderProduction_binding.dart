import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/OrderProduction_controller.dart';


class OrderProductionBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<OrderProductionController>(() => OrderProductionController(
    ));
  }
}