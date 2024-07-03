import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Login_controller.dart';


class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController(
    ));
  }
}