import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/data/model/room/room.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/room_use_case.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class HomeProvider extends ChangeNotifier {
  final RoomUseCase _roomUseCase;

  HomeProvider(this._roomUseCase);

  int? pageItems = 1;
  final int sizeItems = 10;
  bool isLastPage = false;
  bool isFetching = false;

  String searchQuery = '';
  String sortBy = 'created_at';
  String sortDir = 'desc';

  final List<Room> _rooms = [];
  List<Room> get rooms => _rooms;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  DataState<RoomResponse> _state = const DataState.initial();
  DataState<RoomResponse> get state => _state;

  Future<void> fetchRooms({bool reset = false}) async {
    if (reset) {
      pageItems = 1;
      isLastPage = false;
      _rooms.clear();
    }

    if (isFetching || pageItems == null) return;

    isFetching = true;

    try {
      if (pageItems == 1) {
        _state = const DataState.loading();
        notifyListeners();
      }

      final result = await _roomUseCase.getRooms(
        page: pageItems!,
        perPage: sizeItems,
        search: searchQuery,
        sortBy: sortBy,
        sortDir: sortDir,
      );

      switch (result) {
        case DataStateSuccess<RoomResponse>(:final data):
          final newRooms = data.data.rooms;
          final pagination = data.data.pagination;

          _rooms.addAll(newRooms);

          if (pagination.currentPage >= pagination.lastPage) {
            pageItems = null;
            isLastPage = true;
          } else {
            pageItems = pagination.currentPage + 1;
            isLastPage = false;
          }

          _state = DataState.success(data);
          break;

        case DataStateFailed(:final message):
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
    } catch (e) {
      _state = DataState.failed('Terjadi kesalahan: ${e.toString()}');
      notifyListeners();
    } finally {
      isFetching = false;
      notifyListeners();
    }
  }

  Future<void> refreshRooms() async {
    await fetchRooms(reset: true);
  }

  Future<void> searchRooms(String keyword) async {
    searchQuery = keyword.trim();
    await fetchRooms(reset: true);
  }

  Future<void> changeSort({
    required String sortByValue,
    required String sortDirValue,
  }) async {
    sortBy = sortByValue;
    sortDir = sortDirValue;

    await fetchRooms(reset: true);
  }

  void listener() {
    _scrollController.addListener(() {
      if (!_scrollController.hasClients) return;

      final currentPosition = _scrollController.position.pixels;
      final maxPosition = _scrollController.position.maxScrollExtent;

      if (currentPosition >= maxPosition - 100) {
        if (pageItems != null && !isFetching) {
          fetchRooms();
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}