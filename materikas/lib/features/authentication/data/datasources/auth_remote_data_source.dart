// lib/features/authentication/data/datasources/auth_remote_data_source.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> checkAuthStatus();
  Future<UserModel> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<UserModel> checkAuthStatus() async {
    final user = supabaseClient.auth.currentUser;
    if (user != null) {
      return UserModel.fromJson(user.toJson());
    } else {
      throw Exception('Not authenticated');
    }
  }

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );
    if (response.user != null) {
      return UserModel.fromJson(response.user!.toJson());
    } else {
      throw Exception('Login failed');
    }
  }
}
