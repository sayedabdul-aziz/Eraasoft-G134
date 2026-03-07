import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/services/local/shared_pref.dart';
import 'package:bookia/core/styles/themes.dart';
import 'package:bookia/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  await SharedPref.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: SplashScreen(),
    );
  }
}

// data source (Crud Operations)
// 1) Api (Backend) ==> Remote
// 2) Firebase & supabase (as Backend) ==> Remote
// 3) Caching (Local Storage) ==> offline
// 4) Assets/ static (offline) ==> islamic apps
// 5) dummy data => static

// Result:  App have Data

// Important keywords
// 1) BaseUrl & EndPoint
// 2) Request (Method / Body / Params / Headers)
// 3) Response (Status Code / Body)
// 4) Postman
