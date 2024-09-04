import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String id,
    required String email,
    required String role,
  }) : super(id: id, email: email, role: role);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'role': role,
    };
  }
}
