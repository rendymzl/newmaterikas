import 'package:powersync/sqlite3_common.dart' as sqlite;

import '../../../authentication/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String? id,
    required String email,
    required String role,
    required String accountId,
    required DateTime createdAt,
    required String name,
    required String? storeId,
  }) : super(
            id: id,
            email: email,
            role: role,
            accountId: accountId,
            createdAt: createdAt,
            name: name,
            storeId: storeId);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      role: json['role'],
      accountId: json['accountId'],
      createdAt: DateTime.parse(json['createdAt']),
      name: json['name'],
      storeId: json['storeId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'role': role,
      'accountId': accountId,
      'createdAt': createdAt.toIso8601String(),
      'name': name,
      'storeId': storeId,
    };
  }

  factory UserModel.fromRow(sqlite.Row row) {
    return UserModel(
      id: row['id'] as String?,
      email: row['email'] as String,
      role: row['role'] as String,
      accountId: row['account_id'] as String,
      createdAt: DateTime.parse(row['created_at'] as String).toLocal(),
      name: row['name'] as String,
      storeId: row['store_id'] as String?,
    );
  }
}
