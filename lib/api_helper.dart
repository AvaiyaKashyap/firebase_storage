import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user_model.dart';

class ApiHelper {
  static const baseUrl = 'https://reqres.in/api/register'; // Replace with your localhost and port

  static Future<String?> postUser(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/your_endpoint'), // Replace with your API endpoint
      body: json.encode(user.toJson()),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      return 'User created successfully!';
    } else {
      return 'Failed to create user: ${response.statusCode}';
    }
  }
}
