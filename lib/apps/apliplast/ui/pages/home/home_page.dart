import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sens/apps/apliplast/controllers/Home_controller.dart';



class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: SafeArea(
      child: Text('MyController'))
    );
  }
}