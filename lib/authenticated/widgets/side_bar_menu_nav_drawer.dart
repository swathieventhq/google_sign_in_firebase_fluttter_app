import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/registration_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/user_preferences.dart';
import 'package:google_sign_in_firebase_fluttter_app/unauthenticated/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/profile_page.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({required this.imagePath});

  final String imagePath;

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final user = UserPreferences().myUser;

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Swathi'),
            accountEmail: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RichText(
                text: TextSpan(
                    text: 'View Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(
                              // firstName: '',
                              // lastName: '',
                              // email: '',
                              // phone: '',
                              // companyName: '',
                              // linkedInURL: '',
                              // jobFunction: '',
                              // jobRole: '',
                            ),
                          ),
                        );
                      }),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(
                user.coverImagePath,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                ListTile(
                  title: Text('Edit Profile', style: TextStyle(fontSize: 22)),
                  leading: Icon(Icons.mode_edit_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Signout', style: TextStyle(fontSize: 22)),
                  leading: Icon(Icons.logout),
                  onTap: () {
                    // controller.logout();
                  },
                ),
              ],
            ),
          ),
          Container(
          //  padding: EdgeInsets.only(top: 280),
            child: Column(
              children: [
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings', style: TextStyle(fontSize: 22)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => RegistrationPage(),
                      )  ,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
