import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopupPageWidget extends StatelessWidget {
  final String title;
  final Widget content;
  final List<Widget>? buttonList;
  final double width;
  final double height;

  PopupPageWidget({
    required this.title,
    required this.content,
    this.buttonList,
    this.width = 300,
    this.height = 400,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Bentuk medium rounded
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  // IconButton(
                  //   icon: Icon(Icons.close),
                  //   onPressed: () => Get.back(),
                  // ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(child: ListView(children: [content])),
              if (buttonList !=
                  null) // Menambahkan kondisi untuk menampilkan buttonList jika tidak null
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: buttonList!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void showPopupPageWidget({
  required String title,
  required Widget content,
  List<Widget>? buttonList,
  double width = 300,
  double height = 400,
}) {
  Get.dialog(
    PopupPageWidget(
      title: title,
      content: content,
      buttonList: buttonList,
      width: width,
      height: height,
    ),
  );
}
