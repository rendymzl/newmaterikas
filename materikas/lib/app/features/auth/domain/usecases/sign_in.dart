import '../repositories/auth_repository.dart';
import '../entities/user.dart';

class SignIn {
  final AuthRepository repository;

  SignIn(this.repository);

  Future<User?> call(String email, String password) async {
    return await repository.signIn(email, password);
  }
}
