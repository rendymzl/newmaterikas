// lib/features/home/presentation/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: controller.logout,
          ),
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              'Welcome, ${controller.user.value?.email ?? "User"}!',
              style: TextStyle(fontSize: 24),
            )),
      ),
    );
  }
}
