import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/login_page.dart';
import 'package:get/get.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home:
      splashScreen(),
    );
  }
}



