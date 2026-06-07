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
       final result = await _roomUseCase.getRooms(page: pageItems!,perPage: sizeItems);

       switch (result){
         case DataStateSuccess<RoomResponse>(:var data):
           final newRooms = data.data.rooms;
           if (newRooms.length < sizeItems){
             pageItems = null;
             isLastPage = true;
           }else{
             pageItems = pageItems! + 1;
           }
           _rooms.addAll(newRooms);
           _state = DataState.success(data);
           break;
         case DataStateFailed(:var message):
           _state = DataState.failed(message);
           break;
         case DataStateLoading():
           _state = const DataState.loading();
           break;
         case DataStateInitial():
           _state = const DataState.initial();
           break;
       }
       notifyListeners();
     }catch (e){
       _state = DataState.failed('Terjadi kesalahan: ${e.toString()}');
       notifyListeners();
     }finally {
       isFetching = false;
       notifyListeners();
     }
  }

  Future<void> refreshRooms() async {
    pageItems = 1;
    _rooms.clear();
    await fetchRooms();
  }

  void listener(){
    _scrollController.addListener((){
      if(_scrollController.position.pixels >= _scrollController.position.maxScrollExtent){
        if(pageItems != null){
          fetchRooms();
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

}