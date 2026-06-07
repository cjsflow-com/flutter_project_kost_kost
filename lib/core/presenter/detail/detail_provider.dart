import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/detail_room.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/room_use_case.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class DetailProvider extends ChangeNotifier {
  final RoomUseCase _roomUseCase;

  DetailProvider(this._roomUseCase);

  DataState<RoomDetailResponse> _detailRoom = const DataState.initial();
  DataState<RoomDetailResponse> get detailRoom => _detailRoom;


  Future<void> fetchDetailRoom(String id) async {

    if (_detailRoom is DataStateLoading) return;

    _detailRoom = const DataState.loading();
    notifyListeners();

      final result = await _roomUseCase.getRoomById(id: id);

      switch (result) {
        case DataStateSuccess<RoomDetailResponse>(:final data):
          _detailRoom = DataState.success(data);
          break;
        case DataStateFailed(:final message):
          _detailRoom = DataState.failed(message);
          break;
        case DataStateInitial():
          _detailRoom = const DataState.initial();
          break;
        default:
          _detailRoom = const DataState.initial();
          break;
      }
      notifyListeners();
  }
}
