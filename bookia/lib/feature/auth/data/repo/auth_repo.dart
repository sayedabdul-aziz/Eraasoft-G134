import 'package:bookia/core/services/dio/apis.dart';
import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/core/services/local/shared_pref.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';
import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
  static Future<Either<Failure, AuthResponse>> register(
    RegisterParams params,
  ) async {
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

  static Future<Either<Failure, AuthResponse>> login(
    RegisterParams params,
  ) async {
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
}
