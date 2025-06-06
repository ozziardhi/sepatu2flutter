import 'dart:convert';

import 'package:tokosepatu/models/usermodel.dart';
import 'package:http/http.dart' as http;

class AuthService {
 String baseUrl = 'http://10.0.2.2:8000/api'; 

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,  
    required String password,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url), 
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';

      return UserModel(
        id: user.id,
        name: user.name,
        email: user.email,
        username: user.username,
        profilePhotoUrl: user.profilePhotoUrl,
        token: 'Bearer ${data['access_token']}',
      );
    } else {
      var errorMessage = jsonDecode(response.body)['message'] ?? 'Gagal Register';
      throw Exception(errorMessage);
    }
  }
}
