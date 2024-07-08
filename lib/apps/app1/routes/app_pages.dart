import 'package:get/get.dart';
import 'package:sens/apps/app1/bindings/Login_binding.dart';
import 'package:sens/apps/app1/bindings/OrderSealed_binding.dart';
import 'package:sens/apps/app1/bindings/extrusionReport_binding.dart';
import 'package:sens/apps/app1/bindings/gate_binding.dart';
import 'package:sens/apps/app1/bindings/orderProduction_binding.dart';
import 'package:sens/apps/app1/bindings/printJobOrder_binding.dart';
import 'package:sens/apps/app1/bindings/printReport_binding.dart';
import 'package:sens/apps/app1/bindings/register_binding.dart';
import 'package:sens/apps/app1/bindings/semiya_bindin.dart';
import 'package:sens/apps/app1/bindings/servidor_binding.dart';
import 'package:sens/apps/app1/views/extrusion_peport/extrusion_page.dart';
import 'package:sens/apps/app1/views/gatepage/gate_page.dart';
import 'package:sens/apps/app1/views/oderSealed/oder_sealed_page.dart';
import 'package:sens/apps/app1/views/orderProduction/order_production_page.dart';
import 'package:sens/apps/app1/views/printreport/print_report_page.dart';
import 'package:sens/apps/app1/views/register/register_page.dart';
import 'package:sens/apps/app1/views/semiya/semiya_page.dart';
import 'package:sens/apps/app1/views/servidor/servidor_page.dart';

import 'package:sens/login/login_page.dart';




part './app_routes.dart';  
 
abstract class AppPages {
  static final pages = [
    
    GetPage(
      name: Routes.LOGIN, 
      page: () => LoginPage(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.EXTRUSIONREPORT, 
      page: () => ExtrusionReport(),
      transition: Transition.native,
      binding: ExtrusionReportBinding(),
    ),
    GetPage(
      name: Routes.GATEPAGE, 
      page: () => GatewayPage(),
      transition: Transition.native,
      binding: GateBinding(),
    ),
    GetPage(
      name: Routes.ORDERSEALED, 
      page: () => OrderSealedPage(),
      transition: Transition.native,
      binding: OderSealedBinding(),
    ),
    GetPage(
      name: Routes.ORDERPRODUCTION , 
      page: () => OrderProductionPage(),
      transition: Transition.native,
      binding: OrderProductionBinding(),
    ),
    GetPage(
      name: Routes.PRINTREPORT, 
      page: () => PrintReportPage(),
      transition: Transition.native,
      binding: PrintReportBinding(),
    ),
    GetPage(
      name: Routes.PRINTORDER, 
      page: () => PrintReportPage(),
      transition: Transition.native,
      binding: PrintJobOrderBinding(),
    ),
    GetPage(
      name: Routes.REGISTER, 
      page: () => RegisterPage(),
      transition: Transition.native,
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.SEMIYA, 
      page: () => SemiyaPage(),
      transition: Transition.native,
      binding: SemiyaBinding(),
    ),
    GetPage(
      name: Routes.SERVIDOR, 
      page: () => ServidorPage(),
      transition: Transition.native,
      binding: ServidorBinding(),
    ),

    
  ];
}
