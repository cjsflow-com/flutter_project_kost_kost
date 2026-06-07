import 'package:rimbun_cicio_kost/app/data/model/room/detail_room.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class RoomUseCase {
  final RoomRepository _roomRepository;

  RoomUseCase(this._roomRepository);

  Future<DataState<RoomResponse>> getRooms({required int page, required perPage}) => _roomRepository.getRooms(page: page, perPage: perPage);
  Future<DataState<RoomDetailResponse>> getRoomById({required String id}) => _roomRepository.getRoomById(id: id);
}