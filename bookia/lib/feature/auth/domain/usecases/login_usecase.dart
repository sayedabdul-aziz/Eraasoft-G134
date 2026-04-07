import 'package:bookia/core/services/dio/failure.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';
import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:bookia/feature/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);
  Future<Either<Failure, AuthResponse>> call(AuthParams params) {
    // do heavy logic
    // do mapping
    return authRepository.login(params);
  }
}
