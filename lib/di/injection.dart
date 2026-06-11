import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:rimbun_cicio_kost/app/data/model/local/database_helper.dart';
import 'package:rimbun_cicio_kost/app/data/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/app/data/repository/database_repository.dart';
import 'package:rimbun_cicio_kost/app/data/repository/payment_repository.dart';
import 'package:rimbun_cicio_kost/app/data/repository/reservation_repository.dart';
import 'package:rimbun_cicio_kost/app/data/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/app/data/services/api_service.dart';
import 'package:rimbun_cicio_kost/app/module/repository/auth_repository.dart';
import 'package:rimbun_cicio_kost/app/module/repository/database_repository.dart';
import 'package:rimbun_cicio_kost/app/module/repository/payment_repository.dart';
import 'package:rimbun_cicio_kost/app/module/repository/reservation_repository.dart';
import 'package:rimbun_cicio_kost/app/module/repository/room_repository.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/auth_use_case.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/database_use_case.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/payment_use_case.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/reservation_use_case.dart';
import 'package:rimbun_cicio_kost/app/module/use_case/room_use_case.dart';
import 'package:rimbun_cicio_kost/core/presenter/auth/auth_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/detail/detail_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/home_page/home_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/payment/payment_provider.dart';
import 'package:rimbun_cicio_kost/core/presenter/reservation/reservation_provider.dart';

import '../core/presenter/favorite/favorite_provider.dart';

final locator = GetIt.instance;

void init(){
  locator.registerLazySingleton(() => http.Client());

  // Api Services
  locator.registerLazySingleton(() => ApiService(locator()));

  // Local Database
  locator.registerLazySingleton(() => DatabaseHelper());


  // repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImplements(locator()));
  locator.registerLazySingleton<RoomRepository>(() => RoomRepositoryImplements(locator()));
  locator.registerLazySingleton<ReservationRepository>(() => ReservationRepositoryImplements(locator()));
  locator.registerLazySingleton<PaymentRepository>(() => PaymentRepositoryImplements(locator()));
  locator.registerLazySingleton<DatabaseRepository>(() => DatabaseRepositoryImplements(locator()));

  // use case
  locator.registerLazySingleton(() => AuthUseCase(locator()));
  locator.registerLazySingleton(() => RoomUseCase(locator()));
  locator.registerLazySingleton(() => ReservationUseCase(locator()));
  locator.registerLazySingleton(() => PaymentUseCase(locator()));
  locator.registerLazySingleton(() => DatabaseUseCase(locator()));

  // provider
  locator.registerFactory(() => AuthProvider(locator()));
  locator.registerFactory(() => HomeProvider(locator()));
  locator.registerFactory(() => DetailProvider(locator()));
  locator.registerFactory(() => ReservationProvider(locator()));
  locator.registerFactory(() => PaymentProvider((locator())));
  locator.registerFactory(() => FavoriteProvider(locator()));
}