import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remoteDatasource;

  AuthRepositoryImpl({required this.remoteDatasource});

  @override
  Future<User?> signIn(String email, String password) async {
    return await remoteDatasource.signIn(email, password);
  }

  @override
  Future<void> signOut() async {
    return await remoteDatasource.signOut();
  }

  @override
  Future<bool> isLoggedIn() async {
    return await remoteDatasource.isLoggedIn();
  }
}
