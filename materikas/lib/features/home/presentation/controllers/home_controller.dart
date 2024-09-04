// lib/features/home/presentation/controllers/home_controller.dart
import 'package:get/get.dart';
import '../../../authentication/domain/entities/user.dart';
import '../../../authentication/presentation/controllers/auth_controller.dart';

class HomeController extends GetxController {
  final Rx<User?> user = Get.find<AuthController>().user;

  void logout() {
    // Implement logout logic here
    Get.offAllNamed('/login');
  }
}
