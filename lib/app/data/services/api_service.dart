import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';

class ApiService{
  final http.Client _client;

  ApiService(this._client);
  
  Future<http.Response> login(String email, String password){
    final url = Uri.parse('$BASE_URL$LOGIN');
    return _client.post(
      url,
      headers: {'Content-Type': CONTENT_TYPE},
      body: jsonEncode({'email' : email, 'password': password}),
    );
  }

  Future<http.Response> register
      (
      String name,
      String email,
      String password,
      String phone,
      int gender,
      )
  {
    final url = Uri.parse('$BASE_URL$REGISTER');
    return _client.post(
      url,
      headers: {'Content-Type': CONTENT_TYPE},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
        'gender': gender,
      }),
    );
  }

  Future<http.Response> getRooms({int page = 1}) async {
    final url = Uri.parse('$BASE_URL/room?page=$page');
    return await _client.get(
      url,
      headers: {'Content-Type': CONTENT_TYPE},
    );
  }
}