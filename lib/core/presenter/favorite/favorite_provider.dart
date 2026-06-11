import 'package:flutter/material.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/database_use_case.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class FavoriteProvider extends ChangeNotifier {
  final DatabaseUseCase _databaseUseCase;

  FavoriteProvider(this._databaseUseCase);

  DataState<List<String>> _favoriteState = const DataState.initial();
  DataState<List<String>> get favoriteState => _favoriteState;

  DataState<bool> _actionFavoriteState = const DataState.initial();
  DataState<bool> get actionFavoriteState => _actionFavoriteState;

  final Set<String> _favoriteRoomIds = {};
  Set<String> get favoriteRoomIds => _favoriteRoomIds;

  bool isFavorite(String roomId) {
    return _favoriteRoomIds.contains(roomId);
  }

  Future<void> getFavorite() async {
    _favoriteState = const DataState.loading();
    notifyListeners();

    final result = await _databaseUseCase.getFavorite();

    switch (result) {
      case DataStateSuccess(:final data):
        _favoriteRoomIds
          ..clear()
          ..addAll(data);

        _favoriteState = DataState.success(data);
        break;

      case DataStateFailed(:final message):
        _favoriteState = DataState.failed(message);
        break;

      default:
        _favoriteState = const DataState.initial();
    }

    notifyListeners();
  }

  Future<void> addFavorite(String roomId) async {
    _actionFavoriteState = const DataState.loading();
    notifyListeners();

    final result = await _databaseUseCase.addFavorite(roomId);

    switch (result) {
      case DataStateSuccess():
        _favoriteRoomIds.add(roomId);
        _actionFavoriteState = const DataState.success(true);
        break;

      case DataStateFailed(:final message):
        _actionFavoriteState = DataState.failed(message);
        break;

      default:
        _actionFavoriteState = const DataState.initial();
    }

    notifyListeners();
  }

  Future<void> removeFavoriteById(String roomId) async {
    _actionFavoriteState = const DataState.loading();
    notifyListeners();

    final result = await _databaseUseCase.removeFavoriteById(roomId);

    switch (result) {
      case DataStateSuccess():
        _favoriteRoomIds.remove(roomId);
        _actionFavoriteState = const DataState.success(true);
        break;

      case DataStateFailed(:final message):
        _actionFavoriteState = DataState.failed(message);
        break;

      default:
        _actionFavoriteState = const DataState.initial();
    }

    notifyListeners();
  }

  Future<void> toggleFavorite(String roomId) async {
    if (isFavorite(roomId)) {
      await removeFavoriteById(roomId);
    } else {
      await addFavorite(roomId);
    }
  }
}