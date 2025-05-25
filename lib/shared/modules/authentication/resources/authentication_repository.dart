import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:v1_ecommerce/service/AuthStorageService.service.dart';
import 'package:v1_ecommerce/shared/modules/authentication/models/common/ApiResponse.dart';
import 'package:v1_ecommerce/shared/modules/authentication/models/common/LoginResponse.dart';
import 'package:v1_ecommerce/shared/modules/authentication/models/user_data.dart';

class AuthenticationRepository {
  final String baseUrl = 'https://4063-14-226-123-139.ngrok-free.app';

  Future<ApiResponse<LoginResponse>> login(
    String username,
    String password,
  ) async {
    final url = Uri.parse('$baseUrl/auth/token');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      // AuthStorageService.saveToken(result.token);
      return ApiResponse<LoginResponse>.fromJson(
        jsonDecode(response.body),
        (resultJson) =>
            LoginResponse.fromJson(resultJson as Map<String, dynamic>),
      );
    } else {
      throw Exception('Login failed with status ${response.body}');
    }
  }

  Future<ApiResponse<UserData>> getUserInfo(String token) async {
    final url = Uri.parse('$baseUrl/users/my-info');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

      print("kết quả" + response.body);

      var result = ApiResponse<UserData>.fromJson(
        jsonResponse,
        (resultJson) => UserData.fromJson(resultJson as Map<String, dynamic>),
      );

      return result;
    } else {
      throw Exception(
        'Get user info failed with status ${response.statusCode}',
      );
    }
  }
}
