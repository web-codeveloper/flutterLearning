import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersService {
  String url = "http://localhost:3311/api/user";

  Future<List> getUsers() async {
    try {
      var response = await http.get(Uri.parse("$url/list"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error !");
      }
    } catch (SocketException) {
      return Future.error("Error While Fetching Data !");
    }
  }

  Future<String> createUser(Map<String, dynamic> data) async {
    try {
      var response = await http.post(Uri.parse("$url/create"),
          body: jsonEncode(data),
          headers: {"Content-Type": "application/json; charset=UTF-8"});
      if (response.statusCode == 201) {
        return "success";
      } else if (response.statusCode == 400) {
        return "required";
      } else {
        return "error";
      }
    } catch (SocketException) {
      return "Error While Fetching Data !";
    }
  }

  deleteUser(Map<String, dynamic> data) async {
    try {
      var response = await http.post(Uri.parse("$url/delete"),
          body: jsonEncode(data),
          headers: {"Content-Type": "application/json; charset=UTF-8"});
      if (response.statusCode == 200) {
        return "success";
      } else {
        return "error";
      }
    } catch (SocketException) {
      return "Error While Fetching Data !";
    }
  }
}
