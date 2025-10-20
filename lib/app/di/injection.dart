import 'package:digital_desa/data/remote/apis/user_api.dart';
import 'package:digital_desa/data/remote/repositories_impl/user_repository_impl.dart';
import 'package:digital_desa/domain/repositories/user_repository.dart';
import 'package:digital_desa/domain/usecases/get_user_info_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../core/network/dio_client.dart';
import '../../core/storage/secure_storage.dart';
import '../../core/storage/local_storage.dart';
// import '../../core/services/notification_service.dart';
import '../../data/remote/apis/auth_api.dart';
import '../../data/remote/repositories_impl/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../presentation/features/auth/login/bloc/auth_bloc.dart';
import '../../presentation/features/home/bloc/home_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // Core - Storage
  getIt.registerLazySingleton<SecureStorage>(
        () => SecureStorage(getIt<FlutterSecureStorage>()),
  );
  getIt.registerLazySingleton<LocalStorage>(
        () => LocalStorage(getIt<SharedPreferences>()),
  );

  // Core - Network
  getIt.registerLazySingleton<DioClient>(
        () => DioClient(secureStorage: getIt<SecureStorage>()),
  );
  getIt.registerLazySingleton<Dio>(() => getIt<DioClient>().dio);

  // Services - Comment dulu
  // getIt.registerLazySingleton<NotificationService>(() => NotificationService());

  // APIs
  getIt.registerLazySingleton<AuthApi>(() => AuthApi(getIt<Dio>()));
  getIt.registerLazySingleton<UserApi>(() => UserApi(getIt<Dio>()));

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(
      authApi: getIt<AuthApi>(),
      secureStorage: getIt<SecureStorage>(),
      localStorage: getIt<LocalStorage>(),
    ),
  );
  getIt.registerLazySingleton<UserRepository>(
        () => UserRepositoryImpl(
            userApi: getIt<UserApi>()
    ),
  );

  // Use Cases
  getIt.registerLazySingleton(() => LoginUseCase(getIt<AuthRepository>()));
  getIt.registerLazySingleton(() => LogoutUseCase(getIt<AuthRepository>()));
  getIt.registerLazySingleton(() => GetUserInfoUseCase(getIt<UserRepository>()));

  // Blocs
  getIt.registerFactory(
        () => AuthBloc(
      loginUseCase: getIt<LoginUseCase>(),
      logoutUseCase: getIt<LogoutUseCase>(),
    ),
  );
  getIt.registerFactory(
        () => HomeBloc(
            getUserInfoUseCase: getIt<GetUserInfoUseCase>()
    ),
  );
}