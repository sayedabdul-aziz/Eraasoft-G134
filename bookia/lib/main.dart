import 'package:bookia/app.dart';
import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/services/local/shared_pref.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DioProvider.init();
  await SharedPref.init();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: const MainApp(),
    ),
  );
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

// localization
// translations (English / Arabic)
// widget layout direction (LTR / RTL)
