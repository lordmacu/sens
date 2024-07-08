import 'package:get/get.dart';
import 'package:sens/apps/apliplast/controllers/pageview_controller.dart';


class PageViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageviewController>(() => PageviewController(
    ));
  }
}