import 'package:rimbun_cicio_kost/app/data/model/auth/auth.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

abstract class AuthRepository{
  Future<DataState<Auth?>> login(String email, String password);
  Future<DataState<Auth?>> register(String name, String email, String password, String phone, int gender, String address);
}