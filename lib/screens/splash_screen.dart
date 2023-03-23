
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/settings_page.dart';
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
      MaterialPageRoute(builder: (context) => SettingsPage(),
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
          child: Center(child: Text('splashscreeen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
        ),
      ),
    );
  }
}
