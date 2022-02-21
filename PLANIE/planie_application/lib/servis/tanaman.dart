import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:planie_application/model/tanaman.dart';

final String url = "https://planie.xyz/planie/tanaman.php";

List<Tanaman> parseUser(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var users = list.map((e) => Tanaman.fromJson(e)).toList();
  return users;
}

Future<List<Tanaman>> fetchUsers() async {
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parseUser, response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
