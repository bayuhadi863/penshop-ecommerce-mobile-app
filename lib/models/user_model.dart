import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String name;
  String email;
  String? phone;
  DateTime? createdAt;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone = '',
    this.createdAt,
  });

  static UserModel empty() =>
      UserModel(id: '', name: '', email: '', phone: '', createdAt: null);

  Map<String, dynamic> toJson(createdAt) {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'createdAt': createdAt,
    };
  }

  /// Factory method to create a UserModel from a DocumentSnapshot
  factory UserModel.fromSnapshot(DocumentSnapshot documentSnapshot) {
    final data = documentSnapshot.data() as Map<String, dynamic>;
    return UserModel(
      id: documentSnapshot.id,
      name: data['name'],
      email: data['email'],
      phone: data['phone'],
      createdAt: data['createdAt']?.toDate(),
    );
  }
}
