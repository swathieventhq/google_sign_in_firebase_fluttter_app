import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/unauthenticated/login_controller.dart';
import 'package:get/get.dart';
import '../authenticated/screens/feeds/stream_feeds.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(() {
          if (controller.googleAccount.value == null)
            return FloatingActionButton.extended(
              onPressed: () {
                controller.login();
              },
              //  icon: Icon(Icons.security),
              icon: Image.asset(
                'assets/google_logo.png',
                height: 32,
                width: 32,
              ),
              label: Text(
                'Sign in with Google',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            );
          else
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: Image.network(controller.googleAccount.value?.photoUrl ?? '',).image,
                  radius: 100,
                ),
                Text(
                  controller.googleAccount.value?.displayName ?? '',
                  style: Get.textTheme.headline3,
                ),
                Text(
                  controller.googleAccount.value?.email ?? '',
                  style: Get.textTheme.bodyText1,
                ),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>StreamFeeds()),);
                }, child: Text('Next'), ),
                SizedBox(height: 16,),
                ActionChip(
                  avatar: Icon(Icons.logout),
                    label: Text('Logout'),
                  onPressed: () {
                    controller.logout();
                    },
                )
              ],
            );
        }),
      ),
    );
  }
}





