import 'package:bookia/core/services/dio/apis.dart';
import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/core/services/local/shared_pref.dart';
import 'package:bookia/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';
import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:dartz/dartz.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<Either<Failure, AuthResponse>> register(AuthParams params) async {
    var response = await DioProvider.postApi(
      endpoint: Apis.register,
      data: params.toJson(),
    );

    return response.fold(
      (l) {
        return Left(l);
      },
      (right) {
        var data = AuthResponse.fromJson(right);
        SharedPref.setToken(data.token ?? '');
        SharedPref.setUserInfo(data.user);
        return Right(data);
      },
    );
  }

  @override
  Future<Either<Failure, AuthResponse>> login(AuthParams params) async {
    var response = await DioProvider.postApi(
      endpoint: Apis.login,
      data: params.toJson(),
    );

    return response.fold(
      (l) {
        return Left(l);
      },
      (right) {
        var data = AuthResponse.fromJson(right);
        SharedPref.setToken(data.token ?? '');
        SharedPref.setUserInfo(data.user);
        return Right(data);
      },
    );
  }

  @override
  Future<Either<Failure, AuthResponse>> forgetPassword(String email) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }
}
