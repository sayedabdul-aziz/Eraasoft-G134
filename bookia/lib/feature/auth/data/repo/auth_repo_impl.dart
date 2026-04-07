import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';
import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:bookia/feature/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authRemoteDataSource);
  @override
  Future<Either<Failure, AuthResponse>> login(AuthParams params) {
    return authRemoteDataSource.login(params);
  }

  @override
  Future<Either<Failure, AuthResponse>> register(AuthParams params) {
    return authRemoteDataSource.register(params);
  }

  @override
  Future<Either<Failure, AuthResponse>> forgetPassword(String email) {
    return authRemoteDataSource.forgetPassword(email);
  }
}
