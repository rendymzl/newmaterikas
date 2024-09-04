// lib/features/authentication/presentation/pages/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class SplashScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => controller.isLoading.value
            ? CircularProgressIndicator()
            : Text('Welcome to Our App')),
      ),
    );
  }
}
