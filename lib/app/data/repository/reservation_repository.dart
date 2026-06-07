import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
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

}