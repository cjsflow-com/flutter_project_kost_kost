import 'package:rimbun_cicio_kost/app/data/model/local/database_helper.dart';
import 'package:rimbun_cicio_kost/app/module/repository/database_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class DatabaseRepositoryImplements implements DatabaseRepository{

  final DatabaseHelper _databaseHelper;

  DatabaseRepositoryImplements(this._databaseHelper);

  @override
  Future<DataState<bool>> addFavorite(String roomId) async {
    try{
      await _databaseHelper.addFavorite(roomId);
      return const DataState.success(true);
    }catch(e){
      return DataState.failed(e.toString());
    }
  }

  @override
  Future<DataState<List<String>>> getFavorite() async {
    try{
      final result = await _databaseHelper.getFavorite();
      return DataState.success(result);
    }catch (e){
      return DataState.failed(e.toString());
    }
  }

  @override
  Future<DataState<bool>> isFavorite(String roomId) async {
    try{
      final result = await _databaseHelper.getFavoriteById(roomId);
      return DataState.success(result != null);
    }catch(e){
      return DataState.failed(e.toString());
    }
  }

  @override
  Future<DataState<bool>> removeFavoriteById(String roomId) async {
    try{
      await _databaseHelper.removeFavoriteById(roomId);
      return const DataState.success(true);
    }catch(e){
      return DataState.failed(e.toString());;
    }
  }

}