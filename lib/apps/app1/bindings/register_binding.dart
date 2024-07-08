import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Register_controller.dart';


class RegisterBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<RegisterController>(() => RegisterController(
    ));
  }
}