import 'package:get/get.dart';
import 'package:sens/apps/apliplast/controllers/Home_controller.dart';


class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
     ));
  }
}