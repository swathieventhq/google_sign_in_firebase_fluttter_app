import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/edit_profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/create_post.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/bottom_sheet_profile_page.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  final double coverHeight = 110;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              //  padding: EdgeInsets.zero,
              children: [
                buildTop(),
               // buildName(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreatePostPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff7C2FEB),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(" Create a post",style: TextStyle(fontSize: 14.0,),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11.88,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 30,
                            height: 30,
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isDismissible: true,
                                  enableDrag: true,
                                  isScrollControlled: false,
                                  context: context,
                                  builder: (context) =>
                                      BottomSheetProfilePage(),
                                );
                              },
                              child: Icon(
                                Icons.more_horiz,
                                size: 14,
                                color: Color(0xffffffff),
                              ),
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/swathiii.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          height: 90,
          width: 90,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            backgroundImage: AssetImage(
              'assets/prajaktha.jpg',
            ),
          ),
        ),
      );
  Widget buildTop() {
    final top = coverHeight - profileHeight / 3;
    final bottom = profileHeight / 3;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }
}
