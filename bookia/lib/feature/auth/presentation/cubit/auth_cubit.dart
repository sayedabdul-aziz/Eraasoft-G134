import 'package:bookia/feature/auth/data/models/register_params.dart';
import 'package:bookia/feature/auth/domain/usecases/login_usecase.dart';
import 'package:bookia/feature/auth/domain/usecases/register_usecase.dart';
import 'package:bookia/feature/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.loginUseCase, required this.registerUseCase})
    : super(AuthInitialState());

  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(AuthLoadingState());
    var response = await loginUseCase.call(
      AuthParams(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.fold(
      (l) {
        emit(AuthErrorState(message: l.message));
      },
      (r) {
        emit(AuthSuccessState());
      },
    );
  }

  Future<void> register() async {
    emit(AuthLoadingState());
    var response = await registerUseCase.call(
      AuthParams(
        name: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
      ),
    );
    response.fold(
      (l) {
        emit(AuthErrorState(message: l.message));
      },
      (r) {
        emit(AuthSuccessState());
      },
    );
  }
}

// UI  => Cubit(Function) => Repo (Request Api)
// Repo (Response) => Cubit(States) => UI
