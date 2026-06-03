import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:rimbun_cicio_kost/app/data/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/auth_use_case.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
final locator = GetIt.instance;

void init(){
  locator.registerLazySingleton(() => http.Client());

  // Api Services
  locator.registerLazySingleton(() => ApiService(locator()));

  // repository
  locator.registerLazySingleton(() => AuthRepositoryImplements(locator()));

  // use case
  locator.registerLazySingleton(() => AuthUseCase(locator()));

  // provider
  locator.registerFactory(() => AuthProvider(locator()));
}