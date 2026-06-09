import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/cancel_status_response.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/index_reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/reservation.dart';
import 'package:rimbun_cicio_kost/app/data/model/reservation/status_history.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/reservation_use_case.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class ReservationProvider extends ChangeNotifier {
  final ReservationUseCase _reservationUseCase;

  ReservationProvider(this._reservationUseCase);

  DataState<ReservationResponse> _state = const DataState.initial();
  DataState<ReservationResponse> get state => _state;

  DataState<IndexReservationResponse> _reservationIndexState = const DataState.initial();
  DataState<IndexReservationResponse> get reservationIndexState => _reservationIndexState;

  DataState<StatusHistoryResponse> _statusHistoryState = const DataState.initial();
  DataState<StatusHistoryResponse> get statusHistoryState => _statusHistoryState;

  DataState<CancelStatusResponse> _statusCancelResponse = const DataState.initial();
  DataState<CancelStatusResponse> get statusCancelResponse => _statusCancelResponse;

  // final ScrollController _scrollController = ScrollController();
  // ScrollController get scrollController => _scrollController;

  Future<void> getStatusHistory(int reservationId) async {
    _statusHistoryState = const DataState.loading();

    final token = await SharedPreferencesHelper.getString(PREF_AUTH);
    notifyListeners();

    if(token == null){
      _statusHistoryState = const DataState.failed('Authorization failed');
      notifyListeners();
      return;
    }

    final result = await _reservationUseCase.getStatusHistory(reservationId, token);

    switch(result){
      case DataStateSuccess(:final data):
        _statusHistoryState = DataState.success(data);
        break;
      case DataStateFailed(:final message):
        _statusHistoryState = DataState.failed(message);
        break;
      default:
        _statusHistoryState = DataState.initial();
    }

    notifyListeners();

  }

  Future<void> cancelReservation(int reservationId) async {
    _statusCancelResponse = const DataState.loading();
    notifyListeners();

    final result = await _reservationUseCase.cancelReservation(reservationId);

    switch(result){
      case DataStateFailed(:final message):
        _statusCancelResponse = DataState.failed(message);
        break;
      case DataStateSuccess(:final data):
        _statusCancelResponse = DataState.success(data);
        break;
      default:
        _statusCancelResponse = DataState.initial();
    }
    notifyListeners();
  }

  Future<void> indexReservation() async {
    _reservationIndexState = const DataState.loading();
    notifyListeners();

    final token = await SharedPreferencesHelper.getString(PREF_AUTH);

    if(token == null){
      _reservationIndexState = const DataState.failed("Authorization failed");
      notifyListeners();
      return;
    }

    final result = await _reservationUseCase.indexReservation(token);
    switch(result){
      case DataStateSuccess(:final data):
        _reservationIndexState = DataState.success(data);
        break;
      case DataStateFailed(:final message):
        _reservationIndexState = DataState.failed(message);
        break;
      default:
        _reservationIndexState = DataState.initial();
    }
    notifyListeners();
  }

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

  // @override
  // void dispose() {
  //   scrollController.dispose();
  //   super.dispose();
  // }
}
