import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login(String email, String password) {
    // Implement authentication logic here
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }

  void register(String name, String email, String phone, String password) {
    // Implement registration logic here
    _isAuthenticated = true;
    notifyListeners();
  }
}
