import 'package:bookia/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:bookia/feature/auth/data/data_source/auth_remote_data_source_impl.dart';
import 'package:bookia/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:bookia/feature/auth/domain/repository/auth_repo.dart';
import 'package:bookia/feature/auth/domain/usecases/login_usecase.dart';
import 'package:bookia/feature/auth/domain/usecases/register_usecase.dart';
import 'package:bookia/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia/feature/home/data/data_source/home_remote_data_source.dart';
import 'package:bookia/feature/home/data/data_source/home_remote_data_source_impl.dart';
import 'package:bookia/feature/home/data/repo/home_repo_impl.dart';
import 'package:bookia/feature/home/domain/repository/home_repo.dart';
import 'package:bookia/feature/home/domain/usecases/get_best_sellers_usecase.dart';
import 'package:bookia/feature/home/domain/usecases/get_sliders_usecase.dart';
import 'package:bookia/feature/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  // data source

  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(),
  );
  // repo
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt()),
  );
  // useCase
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(getIt()));
  getIt.registerLazySingleton<GetSlidersUseCase>(
    () => GetSlidersUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetBestSellersUseCase>(
    () => GetBestSellersUseCase(getIt()),
  );

  // cubit
  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(loginUseCase: getIt(), registerUseCase: getIt()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
  // core
}
