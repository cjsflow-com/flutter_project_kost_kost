import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class RoomRepositoryImplements extends RoomRepository {

  final ApiService _apiService;

  RoomRepositoryImplements(this._apiService);

  @override
  Future<DataState<RoomResponse>> getRooms({int page = 1}) async {
    try{
      final response = await _apiService.getRooms(page: page);
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

}