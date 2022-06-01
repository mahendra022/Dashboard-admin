import 'dart:io';
import 'package:dashboard_admin/app/bindings.dart';
import 'package:dashboard_admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/http_overrides.dart';

void main() async {
  await dotenv.load();
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: AppBinding(),
        title: 'Dashboard Admin Panel',
        theme: ThemeData(
          fontFamily: 'Titi',
          primarySwatch: Colors.pink,
        ),
        home: MainScreen());
  }
}
