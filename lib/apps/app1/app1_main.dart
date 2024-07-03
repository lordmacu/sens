import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:get/get.dart';
import 'package:sens/core/services/foreground_service.dart';
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
List<GetPage> getApp1Pages() {
  return [
    GetPage(name: '/app1', page: () => App1Main()),
    GetPage(name: '/app1/products', page: () => ProductListPage()),
    GetPage(name: '/mqtt-settings', page: () => MqttSettingsPage()), // Ruta para configuración MQTT
  ];
}
