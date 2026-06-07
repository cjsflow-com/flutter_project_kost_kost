import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/reservation_use_case.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationProvider extends ChangeNotifier {
  final ReservationUseCase _reservationUseCase;

  ReservationProvider(this._reservationUseCase);

  DataState<ReservationResponse> _state = const DataState.initial();
  DataState<ReservationResponse> get state => _state;

  Future<void> createReservation(
    int roomId,
    String startDate,
    int durationMonth,
    int deposit,
    int adminFee,
  ) async {
    _state = const DataState.loading();
    notifyListeners();
    final token = await SharedPreferencesHelper.getString(PREF_AUTH);

    if (token == null){
      _state = const DataState.failed("Authorization failed");
      notifyListeners();
      return;
    }

    final result = await _reservationUseCase.createReservation(roomId, startDate, durationMonth, deposit, adminFee,token);

    switch(result){
      case DataStateSuccess(:final data):
        _state = DataState.success(data);
        break;
      case DataStateFailed(:final message):
        _state = DataState.failed(message);
        break;
      default:
        _state = const DataState.initial();
    }
    notifyListeners();
  }
}
