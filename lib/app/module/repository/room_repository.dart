import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class RoomRepository {
  Future<DataState<RoomResponse>> getRooms({int page = 1});
}