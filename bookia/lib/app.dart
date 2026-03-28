import 'dart:io';

import 'package:bookia/core/routes/app_router.dart';
import 'package:bookia/core/styles/themes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      builder: (_, child) =>
          SafeArea(top: false, bottom: Platform.isAndroid, child: child!),
      theme: AppThemes.lightTheme,
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


// localization
// translations (English / Arabic)
// widget layout direction (LTR / RTL)