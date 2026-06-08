import 'dart:convert';

import 'package:rimbun_cicio_kost/app/data/model/auth/auth.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/core/constant/constant.dart';
import 'package:rimbun_cicio_kost/core/helper/shared_prefrences_helper.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class AuthRepositoryImplements extends AuthRepository{

  final ApiService _apiService;

  AuthRepositoryImplements(this._apiService);


  @override
  Future<DataState<Auth?>> login(String email, String password) async {
    try{
      final response = await _apiService.login(email, password);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];

      if (response.statusCode == 200 && success == true){
        final auth = Auth.fromJson(jsonBody);
        await SharedPreferencesHelper.setSting(PREF_AUTH, auth.token);
        await SharedPreferencesHelper.setSting(PREF_NAME, auth.customer.name);
        await SharedPreferencesHelper.setSting(PREF_EMAIL, auth.customer.email);
        return DataState.success(auth);
      }else{
        return DataState.failed(message);
      }
    }catch (e){
      return DataState.failed('Terjadi kesalahan: ${e.toString()}');
    }
  }

  @override
  Future<DataState<Auth?>> register(String name, String email, String password, String phone, int gender, String address) async {
    try{
      final response = await _apiService.register(name, email, password, phone, gender, address);
      final jsonBody = jsonDecode(response.body);
      final success = jsonBody['success'];
      final message = jsonBody['message'];
      if(success == true){
        final register = Auth.fromJson(jsonBody);
        await SharedPreferencesHelper.setSting(PREF_AUTH, register.token);
        await SharedPreferencesHelper.setSting(PREF_NAME, register.customer.name);
        await SharedPreferencesHelper.setSting(PREF_EMAIL, register.customer.email);
        return DataState.success(register);
      }else{
        return DataState.failed(message);
      }
    }catch (e){
      return DataState.failed('Terjadi kesalahan -> ${e.toString()}');
    }
  }

}