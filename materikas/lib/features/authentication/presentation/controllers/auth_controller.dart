// lib/features/authentication/presentation/controllers/auth_controller.dart
import 'package:get/get.dart';
import '../../domain/usecases/check_auth_status.dart';
import '../../domain/usecases/login.dart';
import '../../domain/entities/user.dart';
import '../../../../core/usecases/usecase.dart';

class AuthController extends GetxController {
  late final CheckAuthStatus checkAuthStatus;
  late final Login login;

  // AuthController({required this.checkAuthStatus, required this.login});

  final Rx<User?> user = Rx<User?>(null);
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    checkAuth();
  }

  Future<void> checkAuth() async {
    isLoading.value = true;
    final result = await checkAuthStatus(NoParams());
    isLoading.value = false;
    result.fold(
      (failure) => Get.offNamed('/login'),
      (user) {
        this.user.value = user;
        Get.offNamed('/home');
      },
    );
  }

  Future<void> loginUser(String email, String password) async {
    isLoading.value = true;
    final result = await login(LoginParams(email: email, password: password));
    isLoading.value = false;
    result.fold(
      (failure) => Get.snackbar('Error', 'Login failed'),
      (user) {
        this.user.value = user;
        Get.offNamed('/home');
      },
    );
  }
}
