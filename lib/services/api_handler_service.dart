import 'dart:convert';
import 'package:food_receipe_app/models/register_model.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  final String baseUrl = "https://10.0.2.2:7292/api/Account";

  Future<http.Response> addUser({required User user}) async {
    final uri = Uri.parse("${baseUrl}/register");
    http.Response response = http.Response('Error', 500);

    try {
      response = await http.post(
        uri,
        headers: <String, String>{
          'Content-type': "application/json; charset=UTF-8"
        },
        body: jsonEncode(user),
      );
    } catch (e) {
      print("Error: $e");
    }
    return response;
  }
}
