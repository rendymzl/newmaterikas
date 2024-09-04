import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class RoleSelectionPage extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Role")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Example of role selection
                authController.user.value?.role = "admin";
                Get.offAllNamed('/home');
              },
              child: Text("Admin"),
            ),
            ElevatedButton(
              onPressed: () {
                // Example of role selection
                authController.user.value?.role = "worker";
                Get.offAllNamed('/home');
              },
              child: Text("Worker"),
            ),
          ],
        ),
      ),
    );
  }
}
