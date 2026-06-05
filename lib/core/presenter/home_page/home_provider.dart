import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/room_use_case.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class HomeProvider extends ChangeNotifier {
  final RoomUseCase _roomUseCase;

  HomeProvider(this._roomUseCase);

  int? pageItems = 1;
  final int sizeItems = 10;
  bool isLastPage = false;
  bool isFetching = false;

  final List<Room> _rooms = [];
  List<Room> get rooms => _rooms;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  DataState<RoomResponse> _state = const DataState.initial();
  DataState<RoomResponse> get state => _state;


  Future<void> fetchRooms() async {
     if(isFetching || pageItems == null) return;

     isFetching = true;

     try{
       if (pageItems == 1){
         _state = DataState.loading();
         notifyListeners();
       }
       final token = await SharedPreferencesHelper.getString(PREF_AUTH);

       if(token == null){
         _state = const DataState.failed("Token authentikasi tidak ditemukan");
         notifyListeners();
         return;
       }
       final result = await _roomUseCase.getRooms(page: pageItems!);

       switch (result){
         case DataStateSuccess<RoomResponse>(:var data)
       }
     }
  }
}