import 'dart:convert';
import 'package:get_storage/get_storage.dart';
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
      return "Server error !";
    }
  }

  Future<String> login(Map<String, dynamic> data) async {
    try {
      final storage = GetStorage();
      var response = await http.post(Uri.parse("$url/login"),
          body: jsonEncode(data),
          headers: {"Content-Type": "application/json; charset=UTF-8"});
      var userDetails = json.decode(response.body);

      if (response.statusCode == 200) {
        storage.write("userInfo", userDetails);
        storage.write("isLogedin", true);
        
        print(storage.read("isLogedin"));
        print(storage.read("userInfo"));
        return "success";
      } else {
        return userDetails["message"];
      }
    } catch (SocketException) {
      return "Server error !";
    }
  }
}
