import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersList {
  String url = "http://localhost:3311/api/user/list";

  Future<List> getUsers() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error !");
      }
    } catch (SocketException) {
      return Future.error("Error While Fetching Data !");
    }
  }
}
