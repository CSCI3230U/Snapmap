import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:snapmap/models/user.dart';

class UserService {
  /// Singleton for this class
  UserService._();
  static final UserService _singleton = UserService._();
  factory UserService.getInstance() => _singleton;
  static final users = FirebaseFirestore.instance.collection("Users");

  /// Currently authenticated user
  User? _user;

  /// Set or get the currently authenticated user
  void setUser(User? user) => _user = user;
  User? getUser() => _user;
}
