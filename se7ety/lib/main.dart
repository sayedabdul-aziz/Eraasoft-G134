import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:se7ety/app.dart';
import 'package:se7ety/core/services/local/shared_pref.dart';
import 'package:se7ety/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SharedPref.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('ar'),
      child: const MainApp(),
    ),
  );
}

// flutter pub run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart


//! Requirements (Fresh, Junior) ?
// CS => Technology (Stack)
// => Fundamentals => Technology (Stack)

// Basics (Fundamentals) ==> Dart
// OOP (Object Oriented Programming)
// SOLID , Design Patterns ==> Clean Code
// UI Design / Responsive => Align to Figma
// State Management => Bloc/Cubit
// Api Integration => Dio package , http package
// Local Storage => SharedPreferences , Hive , Sqflite, flutter_secure_storage
// Firebase Integration => Auth, Firestore

// Git, Github
// Agile

// You Can make your Projects !!


//! What's Next ?

// State Management in Depth
// Api Error Handling (dartz package)
// Clean Architecture (data, domain, presentation layers)
// Dependency Injection (get_it package)
// Push Notification (FCM,SignalR, OneSignal), Local notification (flutter_local_notifications/ awesome_notifications)
// Deploy to Play Store/ App Store
// Dealing With AI (Claude Code, Antigravity, Cursor) ==> Context Engineering / Prompt Engineering

// More Projects


//! Act As A Senior ?

// Flavours (Production, Staging, Development)
// CI/CD (fastlane, github actions, code magic)
// Production tools : (Crashlytics, Sentry) - (Firebase Distribution, TestFlight)
// Maps Integration , Payment Integration