import 'dart:ffi';

class UserData {
  final String id;
  final String username;
  final String email;
  final DateTime? dob;
  final String status;
  final List<String> roles;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserData({
    required this.id,
    required this.username,
    required this.email,
    this.dob,
    required this.status,
    required this.roles,
    this.createdAt,
    this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      dob: json['dob'] != null ? DateTime.parse(json['dob']) : null,
      status: json['status'],
      roles: (json['roles'] as List<dynamic>).map((e) => e.toString()).toList(),
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt:
          json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
    );
  }
}
