import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String url = "http://localhost:3311/api/auth";

  Future<String> signup(Map<String, dynamic> data) async {
    try {
      var response = await http.post(Uri.parse("$url/signup"),
          body: jsonEncode(data),
          headers: {"Content-Type": "application/json; charset=UTF-8"});
      if (response.statusCode == 201) {
        return "success";
      } else {
        return "error";
      }
    } catch (SocketException) {
      return "Error While Fetching Data !";
    }
  }
}
