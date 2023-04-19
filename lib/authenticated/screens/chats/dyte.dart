import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/chats/dyte_meeting_page.dart';

class Dyte extends StatelessWidget {
  const Dyte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const DyteMeetingPage();
                //DyteMeetingPage();
              }),
            );
            // DyteUIKit.loadUI();
          },
          child: const Text(
            "Load UIKit",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
