class User {
  String? id;
  String accountId;
  DateTime createdAt;
  String name;
  String email;
  String role;
  String? storeId;

  User({
    this.id,
    required this.accountId,
    required this.createdAt,
    required this.name,
    required this.email,
    required this.role,
    this.storeId,
  });
}
