import 'package:rimbun_cicio_kost/app/module/repository/database_repository.dart';

import '../../../core/state/data_state.dart';

class DatabaseUseCase{
  final DatabaseRepository _databaseRepository;

  DatabaseUseCase(this._databaseRepository);

  Future<DataState<bool>> addFavorite(String roomId) {
    return _databaseRepository.addFavorite(roomId);
  }

  Future<DataState<List<String>>> getFavorite() {
    return _databaseRepository.getFavorite();
  }

  Future<DataState<bool>> isFavorite(String roomId) {
    return _databaseRepository.isFavorite(roomId);
  }

  Future<DataState<bool>> removeFavoriteById(String roomId) {
    return _databaseRepository.removeFavoriteById(roomId);
  }
}