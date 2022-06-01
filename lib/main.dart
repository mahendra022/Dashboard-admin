import 'dart:io';
import 'package:dashboard_admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/http_overrides.dart';

void main() async {
  await dotenv.load();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard Admin Panel',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MainScreen());
  }
}
