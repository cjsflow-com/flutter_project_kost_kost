import 'package:rimbun_cicio_kost/app/data/model/auth/auth.dart';
import 'package:rimbun_cicio_kost/app/module/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/core/state/data_state.dart';

class AuthUseCase{
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<DataState<Auth?>> login(String email, String password) => _authRepository.login(email, password);

  Future<DataState<Auth?>> register(String name, String email, String password, String phone, int gender) => _authRepository.register(name, email, password, phone, gender);
}