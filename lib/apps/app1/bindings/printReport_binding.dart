import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/PrintReport_controller.dart';


class PrintReportBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PrintReportController>(() => PrintReportController(
    ));
  }
}