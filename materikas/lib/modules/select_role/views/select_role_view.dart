import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_role_controller.dart';

class SelectRoleView extends GetView<SelectRoleController> {
  const SelectRoleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectRoleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SelectRoleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
