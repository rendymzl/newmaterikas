import 'package:get/get.dart';
import '../../domain/usecases/sign_in.dart';
import '../../domain/usecases/sign_out.dart';
import '../../domain/entities/user.dart';

class AuthController extends GetxController {
  final SignIn signInUseCase;
  final SignOut signOutUseCase;

  var isLoading = false.obs;
  var user = Rxn<User>();

  AuthController({
    required this.signInUseCase,
    required this.signOutUseCase,
  });

  Future<void> signIn(String email, String password) async {
    isLoading.value = true;
    final result = await signInUseCase.call(email, password);
    if (result != null) {
      user.value = result;
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Error", "Sign in failed");
    }
    isLoading.value = false;
  }

  Future<void> signOut() async {
    await signOutUseCase.call();
    user.value = null;
    Get.offAllNamed('/login');
  }

  bool isLoggedIn() {
    return user.value != null;
  }
}
