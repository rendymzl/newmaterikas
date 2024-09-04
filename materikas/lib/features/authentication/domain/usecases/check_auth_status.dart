// lib/features/authentication/domain/usecases/check_auth_status.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class CheckAuthStatus implements UseCase<User, NoParams> {
  final AuthRepository repository;

  CheckAuthStatus(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await repository.checkAuthStatus();
  }
}
