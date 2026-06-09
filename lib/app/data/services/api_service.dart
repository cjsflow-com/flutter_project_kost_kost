import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';

class ApiService {
  final http.Client _client;

  ApiService(this._client);

  Future<http.Response> login(String email, String password) {
    final url = Uri.parse('$BASE_URL$LOGIN');
    return _client.post(
      url,
      headers: {'Content-Type': CONTENT_TYPE},
      body: jsonEncode({'email': email, 'password': password}),
    );
  }

  Future<http.Response> register(
    String name,
    String email,
    String password,
    String phone,
    int gender,
    String address,
  ) {
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
        'address': address,
      }),
    );
  }

  Future<http.Response> getRooms({int page = 1, int per_page = 10}) async {
    final url = Uri.parse('$BASE_URL$GET_ROOMS').replace(
      queryParameters: {
        'page': page.toString(),
        'per_page': per_page.toString(),
      },
    );
    return _client.get(url);
  }

  Future<http.Response> getRoomById({required String id}) async {
    final uri = Uri.parse('$BASE_URL$GET_ROOMS/$id');
    return http.get(uri);
  }

  Future<http.Response> createReservation({
    required int roomId,
    required String startDate,
    required int durationMonth,
    required int deposit,
    required int adminFee,
    required String token,
  }) async {
    final uri = Uri.parse(
      '$BASE_URL$ADD_RESERVATION',
    );

    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    };

    return http.post(uri,
      headers: headers,
      body: jsonEncode({
        'room_id': roomId,
        'start_date': startDate,
        'duration_month': durationMonth,
        'deposit': deposit,
        'admin_fee': adminFee,
      })
    );
  }

  Future<http.Response> getPaymentMethod(){
    final uri = Uri.parse("$BASE_URL$PAYMENT_METHODS");
    return http.get(uri);
  }

  Future<http.Response> createPayment(int reservationId, int paymentMethodId, int amount, String token){
    final uri = Uri.parse("$BASE_URL$PAYMENTS/create");
    final Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    };
    return http.post(uri,headers: headers,body: jsonEncode({
      'reservation_id': reservationId,
      'payment_method_id': paymentMethodId,
      'amount': amount
    }));
  }

  Future<http.Response> indexReservation(String token){
    final uri = Uri.parse("$BASE_URL$RESERVATION");
    return http.get(uri,headers: {"Authorization": "Bearer $token"});
  }
  
  Future<http.Response> statusHistory(int reservationId, String token){
    final uri = Uri.parse("$BASE_URL$RESERVATION/$reservationId/status-history");
    return http.get(uri, headers: {"Authorization": "Bearer $token"});
  }
}
