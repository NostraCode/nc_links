part of '_index.dart';

class Userx {
  int id;
  String name;
  String email;
  String gender;
  String status;
  Userx({
    this.id = 0,
    this.name = '',
    this.email = '',
    this.gender = '',
    this.status = '',
  });
  Userx.mock({
    this.id = 0,
    this.name = 'mock name',
    this.email = 'mock email',
    this.gender = 'mock gender',
    this.status = 'mock status',
  });

  Userx copyWith({
    int? id,
    String? name,
    String? email,
    String? gender,
    String? status,
  }) {
    return Userx(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'gender': gender,
      'status': status,
    };
  }

  factory Userx.fromMap(Map<String, dynamic> map) {
    return Userx(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Userx.fromJson(String source) => Userx.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, gender: $gender, status: $status)';
  }
}
