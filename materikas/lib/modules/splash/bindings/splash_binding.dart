import 'package:get/get.dart';

import '../../../features/authentication/presentation/controllers/auth_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
