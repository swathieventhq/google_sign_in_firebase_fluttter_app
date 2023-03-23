import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/login_page.dart';
import 'package:get/get.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF151318),
        primaryColor: Color(0xFF151318),
      ),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
