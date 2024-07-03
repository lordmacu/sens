import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Servidor_controller.dart';


class ServidorBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ServidorController>(() => ServidorController(
    ));
  }
}