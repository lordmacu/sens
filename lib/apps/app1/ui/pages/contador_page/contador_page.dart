import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sens/apps/app1/controllers/Contador_controller.dart';


class ContadorPage extends GetView<Contadorcontroller> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: SafeArea(
      child: Text('Contadorcontroller'))
    );
  }
}