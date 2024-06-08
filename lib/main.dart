import 'package:flutter/material.dart';
import 'package:food_receipe_app/pages/recipe_detaile_preview_page.dart';
import 'package:food_receipe_app/pages/auth_toggle_page.dart';
import 'dart:io';

import 'package:food_receipe_app/pages/home_page.dart';
import 'package:food_receipe_app/pages/main_landing_page.dart';
import 'package:food_receipe_app/pages/save_recipes_page.dart';
import 'package:food_receipe_app/pages/search_recipes_page.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLandingPage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
