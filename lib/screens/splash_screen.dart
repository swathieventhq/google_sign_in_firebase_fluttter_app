
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/registration_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in_firebase_fluttter_app/components/streams_feed.dart';
import 'package:google_sign_in_firebase_fluttter_app/login_page.dart';



class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  final storage = new FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    Timer( Duration(seconds: 3), () async {
      if(storage.read == null){
  await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => RegistrationPage(),
      ));
      }else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>StreamFeeds(),//LoginPage(), StreamFeeds(),// BottomNavigationBarWidget(),
            ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
        //  color: Colors.cyan,
          child: Center(
              child: Image.asset(
                'assets/SaaSInsider_logo.png',
                width: 227,
                height: 50,
              ),
       //   Text('splashscreeen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)
          ),
        ),
      ),
    );
  }
}
