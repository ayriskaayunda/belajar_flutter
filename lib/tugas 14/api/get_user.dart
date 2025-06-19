import 'dart:convert';

import 'package:belajar_flutter/tugas%2014/model/cat_model.dart';
import 'package:http/http.dart' as http;

Future<List<CatUsersModel>> getUsers() async {
  final response = await http.get(
    Uri.parse('https://api.thecatapi.com/v1/images/search?limit=10'),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => CatUsersModel.fromJson(json)).toList();
  } else {
    throw Exception('failed to load users');
  }
}
