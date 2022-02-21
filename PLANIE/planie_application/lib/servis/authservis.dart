import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:planie_application/model/user.dart';

class AuthService {
  static Future<User> login(String username, String password_user) async {
    if (username == "" || password_user == "") {
      Fluttertoast.showToast(
          msg: "Silahkan lengkapi data login",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
    String apiURL = "https://planie.xyz/planie/login.php";
    var response = await http.post(Uri.parse(apiURL), body: {
      "username": username,
      "password_user": password_user,
    });
    var datauser = json.decode(response.body);
    print(datauser[0]);
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences local = await _prefs;
    local.setString('user', response.body);
    return User.createUser(datauser[0]);
  }

  Future<User?> loadUser() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences local = await _prefs;
    final String user = local.getString("user") ?? "user error";
    print("load user");
    print(user);
    if (user != "user error") {
      var json = jsonDecode(user);
      var usr = User.createUser(json[0]);
      return usr;
    }
    return null;
  }
}
