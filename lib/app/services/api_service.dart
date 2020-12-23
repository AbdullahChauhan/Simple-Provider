import 'dart:convert';

import 'package:provider_ex/app/models/RandomUser.dart';

import 'package:http/http.dart' as http;

class ApiService {
  // func: get random user, getting the response on model --> RandomUser
  Future<RandomUser> getRandomUser() async {
    try {
      final response = await http.get('https://randomuser.me/api/');
      final randomUser = RandomUser.fromJson(jsonDecode(response.body));
      return randomUser;
    } catch (err) {
      print(err.toString());
    }
  }
}
