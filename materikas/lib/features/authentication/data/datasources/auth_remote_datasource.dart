import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/database/powersync.dart';
import '../models/user_model.dart';

class AuthRemoteDatasource {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<UserModel?> signIn(String email, String password) async {
    final response = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user != null) {
      final result = await db.get(
          'SELECT * FROM accounts WHERE account_id = ?', [response.user!.id]);
      if (result.isNotEmpty) {
        return UserModel.fromRow(result);
      }
    }

    return null;
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<bool> isLoggedIn() async {
    return supabase.auth.currentUser != null;
  }
}
