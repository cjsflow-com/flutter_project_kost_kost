import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/room/detail_room.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class RoomRepositoryImplements extends RoomRepository {

  final ApiService _apiService;

  RoomRepositoryImplements(this._apiService);

  @override
  Future<DataState<RoomResponse>> getRooms({required int page, required int perPage, String search = '', String sortBy = "created_at", String sortDir = "desc"}) async {
    try{
      final response = await _apiService.getRooms(page: page,per_page: perPage,search: search,sortBy: sortBy,sortDir: sortDir);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      if (response.statusCode == 200 && success == true){
        final roomResponse = RoomResponse.fromJson(jsonBody);
        return DataState.success(roomResponse);
      }else{
        return DataState.failed(message);
      }
    }catch (e){
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

  @override
  Future<DataState<RoomDetailResponse>> getRoomById({required String id}) async {
    try{
      final response = await _apiService.getRoomById(id: id);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      if (response.statusCode == 200 && success == true){
        return DataState.success(RoomDetailResponse.fromJson(jsonBody));
      }else{
        return DataState.failed(message);
      }
    }catch (e){
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

}