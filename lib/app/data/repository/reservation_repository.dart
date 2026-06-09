
import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/status_history.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/reservation_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationRepositoryImplements extends ReservationRepository {

  final ApiService _apiService;

  ReservationRepositoryImplements(this._apiService);

  @override
  Future<DataState<ReservationResponse>> createReservation(int roomId, String startDate, int durationMonth, int deposit, int adminFee, String token) async {
    try{
      final response = await _apiService.createReservation(roomId: roomId, startDate: startDate, durationMonth: durationMonth, deposit: deposit, adminFee: adminFee, token: token);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      // print(response.body);

      if (response.statusCode == 200 && success == true){
        final reservation = ReservationResponse.fromJson(jsonBody);
        return DataState.success(reservation);
      }else{
        print("Terrjadi kesalahan => $message");
        return DataState.failed(message);
      }
    }catch (e){
      print("Terrjadi kesalahan => ${e.toString()}");
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

  @override
  Future<DataState<IndexReservationResponse>> indexReservation(String token) async {
    try{
      final response = await _apiService.indexReservation(token);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      // print(response.body);

      if(response.statusCode == 200 && success == true){
        final indexReservation = IndexReservationResponse.fromJson(jsonBody);
        return DataState.success(indexReservation);
      }else{
        print("Terjadi kesalaha => $message");
        return DataState.failed(message);
      }
    }catch (e){
      print("Terjadi kesalahan => ${e.toString()}");
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

  @override
  Future<DataState<StatusHistoryResponse>> getStatusHistory(int reservationId, String token) async {
    try{
      final response = await _apiService.statusHistory(reservationId, token);
      final jsonBody = jsonDecode(response.body);
      final message = jsonBody['message'];
      final success = jsonBody['success'];

      if(response.statusCode == 200 && success == true){
        return DataState.success(jsonBody);
      }else{
        print('Terjadi kesalahan => ${message}');
        return DataState.failed(message);
      }
    }catch (e){
      print('Terjadi kesalahan => ${e.toString()}');
      return DataState.failed(e.toString());
    }
  }

}