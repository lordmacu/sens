import 'package:get/get.dart';
import 'package:sens/apps/apliplast/bindings/Login_binding.dart';
import 'package:sens/apps/apliplast/bindings/OrderSealed_binding.dart';
import 'package:sens/apps/apliplast/bindings/pageview_binding.dart';
import 'package:sens/apps/apliplast/bindings/extrusionReport_binding.dart';
import 'package:sens/apps/apliplast/bindings/gate_binding.dart';
import 'package:sens/apps/apliplast/bindings/orderProduction_binding.dart';
import 'package:sens/apps/apliplast/bindings/printJobOrder_binding.dart';
import 'package:sens/apps/apliplast/bindings/printReport_binding.dart';
import 'package:sens/apps/apliplast/bindings/register_binding.dart';
import 'package:sens/apps/apliplast/bindings/semiya_bindin.dart';
import 'package:sens/apps/apliplast/bindings/servidor_binding.dart';
import 'package:sens/apps/apliplast/ui/pages/impresion/impresion_page.dart';
import 'package:sens/apps/apliplast/views/extrusion_peport/extrusion_page.dart';
import 'package:sens/apps/apliplast/views/gatepage/gate_page.dart';
import 'package:sens/apps/apliplast/views/oderSealed/oder_sealed_page.dart';
import 'package:sens/apps/apliplast/views/orderProduction/order_production_page.dart';
import 'package:sens/apps/apliplast/views/printreport/print_report_page.dart';
import 'package:sens/apps/apliplast/views/register/register_page.dart';
import 'package:sens/apps/apliplast/views/semiya/semiya_page.dart';
import 'package:sens/apps/apliplast/views/servidor/servidor_page.dart';

import 'package:sens/login/login_page.dart';




part './app_routes.dart';  
 
abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.PAGEVIEW,
      page: () => ViewPage(),
      transition: Transition.native,
      binding: PageViewBinding(),
    ),
    
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
