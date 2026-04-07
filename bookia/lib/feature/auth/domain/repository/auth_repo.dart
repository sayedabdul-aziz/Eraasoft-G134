import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';
import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:dartz/dartz.dart';

// Repo (Manager) , Data Source (Worker)

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> register(AuthParams params);
  Future<Either<Failure, AuthResponse>> login(AuthParams params);
  Future<Either<Failure, AuthResponse>> forgetPassword(String email);
}
