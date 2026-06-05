import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class RoomUseCase {
  final RoomRepository _roomRepository;

  RoomUseCase(this._roomRepository);

  Future<DataState<RoomResponse>> getRooms({int page = 1}) => _roomRepository.getRooms(page: page);
}