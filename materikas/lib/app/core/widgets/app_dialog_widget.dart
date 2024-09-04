import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog {
  static void show({
    required String title,
    required String content,
    String confirmText = "Confirm",
    String cancelText = "Cancel",
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    Color? confirmColor,
    Color? cancelColor,
    double buttonWidth = 120, // Default width of buttons
  }) {
    Get.defaultDialog(
      title: title,
      content: Text(content),
      confirm: SizedBox(
        width: buttonWidth,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: confirmColor ?? Get.theme.primaryColor),
          onPressed: () {
            if (onConfirm != null) {
              onConfirm();
            }
            Get.back();
          },
          child: Text(confirmText),
        ),
      ),
      cancel: SizedBox(
        width: buttonWidth,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: cancelColor ?? Colors.grey),
          onPressed: () {
            if (onCancel != null) {
              onCancel();
            }
            Get.back();
          },
          child: Text(cancelText),
        ),
      ),
      textConfirm: "",
      textCancel: "",
    );
  }
}
