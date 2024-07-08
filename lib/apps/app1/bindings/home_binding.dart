import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Home_controller.dart';


class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
     ));
  }
}