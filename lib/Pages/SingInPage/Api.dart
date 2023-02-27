import 'dart:convert';

class Api {
  static Future<bool> getAllAA() async {
    await Future.delayed(const Duration(seconds: 4));
    return true;
  }

  static Future<bool> getAllBB() async {
    await Future.delayed(const Duration(seconds: 4));
    return true;
  }

  static Future<bool> getAllCC() async {
    await Future.delayed(const Duration(seconds: 4));
    return true;
  }

  static Future<bool> userRegister(name, email, phone, password) async {
    var userData = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password
    };
    var encode = jsonEncode(userData);

    return true;
  }

  static Future<bool> userLogin(email, password) async {
    var userData = {"email": email, "password": password};
    var encode = jsonEncode(userData);

    return true;
  }
}
