import 'package:rimbun_cicio_kost/app/data/model/room/detail_room.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class RoomRepository {
  Future<DataState<RoomResponse>> getRooms({
    required int page,
    required int perPage,
});

  Future<DataState<RoomDetailResponse>> getRoomById({required String id});
}