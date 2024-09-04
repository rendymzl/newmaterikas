// lib/di.dart
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/authentication/data/datasources/auth_remote_data_source.dart';
import 'features/authentication/data/repositories/auth_repository_impl.dart';
import 'features/authentication/domain/repositories/auth_repository.dart';
import 'features/authentication/domain/usecases/check_auth_status.dart';
import 'features/authentication/domain/usecases/login.dart';
import 'features/authentication/presentation/controllers/auth_controller.dart';

Future<void> init() async {
  // External
  final supabase = Supabase.instance.client;

  // Data sources
  Get.lazyPut<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(supabaseClient: supabase),
  );

  // Repositories
  Get.lazyPut<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: Get.find()),
  );

  // Use cases
  Get.lazyPut(() => CheckAuthStatus(Get.find()));
  Get.lazyPut(() => Login(Get.find()));

  // Controllers
  Get.lazyPut(
    () => AuthController(),
  );
}
