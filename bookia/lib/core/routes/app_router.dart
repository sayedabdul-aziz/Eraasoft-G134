import 'package:bookia/core/di/service_locator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/feature/auth/data/data_source/auth_remote_data_source_impl.dart';
import 'package:bookia/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:bookia/feature/auth/domain/usecases/login_usecase.dart';
import 'package:bookia/feature/auth/domain/usecases/register_usecase.dart';
import 'package:bookia/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:bookia/feature/auth/presentation/page/login_screen.dart';
import 'package:bookia/feature/auth/presentation/page/register_screen.dart';
import 'package:bookia/feature/details/presentation/page/details_screen.dart';
import 'package:bookia/feature/home/data/models/best_seller_books_response/product.dart';
import 'package:bookia/feature/main/main_app_screen.dart';
import 'package:bookia/feature/place_order/presentation/page/place_order_screen.dart';
import 'package:bookia/feature/profile/presentation/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:bookia/feature/profile/presentation/edit_profile/page/edit_profile_screen.dart';
import 'package:bookia/feature/splash/splash_screen.dart';
import 'package:bookia/feature/welcome/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  // configuration
  static GoRouter routes = GoRouter(
    navigatorKey: globalContext,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(
            loginUseCase: getIt<LoginUseCase>(),
            registerUseCase: getIt<RegisterUseCase>(),
          ),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(
            loginUseCase: LoginUseCase(
              AuthRepositoryImpl(AuthRemoteDataSourceImpl()),
            ),
            registerUseCase: RegisterUseCase(
              AuthRepositoryImpl(AuthRemoteDataSourceImpl()),
            ),
          ),
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: Routes.main,
        builder: (context, state) {
          var selectedIndex = state.extra as int?;
          return MainAppScreen(selectedIndex: selectedIndex);
        },
      ),
      GoRoute(
        path: Routes.details,
        builder: (context, state) {
          return DetailsScreen(model: state.extra as Product);
        },
      ),
      GoRoute(
        path: Routes.placeOrder,
        builder: (context, state) {
          return PlaceOrderScreen(total: state.extra as String);
        },
      ),
      GoRoute(
        path: Routes.editProfile,
        builder: (context, state) {
          return BlocProvider(
            create: (context) {
              // return EditProfileCubit()..loadInitData();
              var cubit = EditProfileCubit();
              cubit.loadInitData();
              return cubit;
            },
            child: EditProfileScreen(),
          );
        },
      ),
    ],
  );
}
