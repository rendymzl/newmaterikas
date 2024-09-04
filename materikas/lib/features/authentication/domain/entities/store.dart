class Store {
  String? id;
  DateTime createdAt;
  String name;
  String address;
  String? phone;
  String? telp;
  String? ownerId;

  Store({
    this.id,
    required this.createdAt,
    required this.name,
    required this.address,
    this.phone,
    this.telp,
    this.ownerId,
  });
}
