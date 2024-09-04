import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/app_dialog_widget.dart';
import '../../../core/widgets/popup_page_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context)
              .textTheme
              .displayLarge, // Menggunakan Text Title
        ),
      ),
      backgroundColor:
          Theme.of(context).colorScheme.surface, // Menggunakan Background Color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to the Flutter App',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge, // Menggunakan Text Body
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AppDialog.show(
                  title: "Konfirmasi",
                  content: "Apakah Anda yakin ingin melanjutkan?",
                  confirmText: "Ya",
                  cancelText: "Tidak",
                  onConfirm: () {
                    // Logika saat tombol konfirmasi ditekan
                    print("Tindakan dikonfirmasi!");
                  },
                  onCancel: () {
                    // Logika saat tombol batal ditekan
                    print("Tindakan dibatalkan!");
                  },
                );
              },
              child: Text('Fill Button'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Menggunakan Fill Button
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outline Button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Theme.of(context)
                    .primaryColor, // Menggunakan Outline Button
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showPopupPageWidget(
                  title: "Detail Produk",
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Produk: ABC"),
                      SizedBox(height: 10),
                      Text("Deskripsi: Ini adalah produk contoh."),
                      // Tambahkan widget lain seperti ListView, Form, dsb.
                    ],
                  ),
                  buttonList: [
                    OutlinedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Outline Button'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Theme.of(context)
                            .primaryColor, // Menggunakan Outline Button
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 20.0),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Button'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Theme.of(context)
                            .primaryColor, // Menggunakan Outline Button
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 20.0),
                      ),
                    ),
                  ],
                  width: 450, // Lebar popup
                  height: 600, // Tinggi popup
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Menggunakan Fill Button
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
              ),
              child: Text("Tampilkan Popup Page"),
            ),
            Text(
              'This is a comment.',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall, // Menggunakan Text Comment
            ),
            Text(
              'This text is linethrough.',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall, // Menggunakan Text Linethrough
            ),
          ],
        ),
      ),
    );
  }
}
