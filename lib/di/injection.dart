import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:rimbun_cicio_kost/app/data/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/app/data/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/auth_use_case.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/room_use_case.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/home_page/home_provider.dart';

final locator = GetIt.instance;

void init(){
  locator.registerLazySingleton(() => http.Client());

  // Api Services
  locator.registerLazySingleton(() => ApiService(locator()));

  // repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImplements(locator()));
  locator.registerLazySingleton<RoomRepository>(() => RoomRepositoryImplements(locator()));

  // use case
  locator.registerLazySingleton(() => AuthUseCase(locator()));
  locator.registerLazySingleton(() => RoomUseCase(locator()));

  // provider
  locator.registerFactory(() => AuthProvider(locator()));
  locator.registerFactory(() => HomeProvider(locator()));
}