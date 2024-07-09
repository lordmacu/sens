import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:get/get.dart';
import 'package:sens/apps/apliplast/bindings/Login_binding.dart';
import 'package:sens/apps/apliplast/bindings/gate_binding.dart';
import 'package:sens/apps/apliplast/bindings/orderProduction_binding.dart';
import 'package:sens/apps/apliplast/bindings/printJobOrder_binding.dart';
import 'package:sens/apps/apliplast/bindings/printReport_binding.dart';
import 'package:sens/apps/apliplast/bindings/register_binding.dart';
import 'package:sens/apps/apliplast/bindings/semiya_bindin.dart';
import 'package:sens/apps/apliplast/bindings/servidor_binding.dart';
import 'package:sens/apps/apliplast/bindings/imprimir_binding.dart';

import 'package:sens/apps/apliplast/views/extrusionReport/extrusion_page.dart';
import 'package:sens/apps/apliplast/views/gatepage/gate_page.dart';
import 'package:sens/apps/apliplast/views/oderSealed/oder_sealed_page.dart';
import 'package:sens/apps/apliplast/views/printJobOrder/print_Jobo_order_page.dart';
import 'package:sens/apps/apliplast/views/printreport/print_report_page.dart';
import 'package:sens/apps/apliplast/views/register/register_page.dart';
import 'package:sens/apps/apliplast/views/semiya/semiya_page.dart';
import 'package:sens/apps/apliplast/views/servidor/servidor_page.dart';
import 'package:sens/apps/apliplast/views/impresion/impresion_page.dart';

import 'package:sens/core/services/foreground_service.dart';
import 'package:sens/login/login_page.dart';
 import 'package:sens/settings/views/mqtt_settings_page.dart';
import 'views/product_list_page.dart';
import 'services/product_service.dart';
import 'controllers/product_list_controller.dart';
import '../../core/services/mqtt_service.dart';
import 'package:get_storage/get_storage.dart'; // Importar GetStorage

class App1Main extends StatefulWidget {
  @override
  _App1MainState createState() => _App1MainState();
}

class _App1MainState extends State<App1Main> {
  final ForegroundTaskService _foregroundTaskService = ForegroundTaskService();

  @override
  void initState() {
    super.initState();


    Get.lazyPut<ProductService>(() => ProductService());
    Get.lazyPut<ProductListController>(() => ProductListController());
    Get.put(MqttService());

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _foregroundTaskService.requestPermissions();
      await _foregroundTaskService.initForegroundTask();
      _foregroundTaskService.startForegroundTask();

      if (await FlutterForegroundTask.isRunningService) {
        final newReceivePort = FlutterForegroundTask.receivePort;
        _foregroundTaskService.registerReceivePort(newReceivePort);
      }
    });
  }

  @override
  void dispose() {
    _foregroundTaskService.closeReceivePort();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WithForegroundTask(
      child: Scaffold(
        appBar: AppBar(title: Text('App 1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to App 1!'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/app1/products');
                },
                child: Text('Go to Product List'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Función para registrar las rutas específicas de app1
List<GetPage> getRoutesApiplast() {
  return [
    GetPage(name: '/app1', page: () => App1Main()),
    GetPage(
      name: '/LOGIN',
      page: () => LoginPage(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
     GetPage(
      name: '/ExtrusionReport',
      page: () => ExtrusionReport(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
     GetPage(
      name: '/gatepage',
      page: () => GatewayPage(),
      transition: Transition.native,
      binding: GateBinding(),
    ),
     GetPage(
      name: '/orderProduction',
      page: () => OrderSealedPage(),
      transition: Transition.native,
      binding: OrderProductionBinding(),
    ),
     GetPage(
      name: '/printOrder',
      page: () => PrintJobOrderPage(),
      transition: Transition.native,
      binding: PrintJobOrderBinding(),
    ),
     GetPage(
      name: '/printreport',
      page: () => PrintReportPage(),
      transition: Transition.native,
      binding: PrintReportBinding(),
    ),
     GetPage(
      name: '/register',
      page: () => RegisterPage(),
      transition: Transition.native,
      binding: RegisterBinding(),
    ),
     GetPage(
      name: '/semiya',
      page: () => SemiyaPage(),
      transition: Transition.native,
      binding: SemiyaBinding(),
    ),
     GetPage(
      name: '/servidor',
      page: () => ServidorPage(),
      transition: Transition.native,
      binding: ServidorBinding(),
    ),
     GetPage(
      name: '/impresion',
      page: () => ImpresionPage(),
      transition: Transition.native,
      binding: ImprimirBinding(),
    ),

    GetPage(name: '/app1/products', page: () => ProductListPage()),
    GetPage(name: '/mqtt-settings', page: () => MqttSettingsPage()),

    // Ruta para configuración MQTT
  ];
}


