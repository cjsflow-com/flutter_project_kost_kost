import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class DatabaseRepository {
  Future<DataState<bool>> addFavorite(String roomId);
  Future<DataState<List<String>>> getFavorite();
  Future<DataState<bool>> isFavorite(String roomId);
  Future<DataState<bool>> removeFavoriteById(String roomId);
}