import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/user.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/user_preferences.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/create_post.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/edit_profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/bottom_sheet_profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/profile_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final user = UserPreferences().myUser;
  final double coverHeight = 110;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileWidget(
            imagePath: user.coverImagePath,
            onClicked: () async {},
            profileImagePath: user.profileImagePath,
          ),
          buildName(user),
          Padding(
            // padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
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
                          Text(
                            " Create a post",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
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
                            builder: (context) => BottomSheetProfilePage(),
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
    );
  }

  Widget buildName(User user) => Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 9),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Row(
                        children: [
                          Text(user.firstName, style: TextStyle(fontSize: 16.0)),
                          SizedBox(
                            width:4,
                          ),
                          Text(user.lastName, style: TextStyle(fontSize: 16.0)),
                          SizedBox(
                            width: 8,
                          ),
                          Text("@" + user.userName,
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.idBadge,
                            size: 12.0,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(user.jobFunction,
                              style: TextStyle(fontSize: 14.0)),
                          SizedBox(
                            width: 8,
                          ),
                          Text('@', style: TextStyle(fontSize: 14.0)),
                          SizedBox(
                            width: 8,
                          ),
                          Text(user.companyName,
                              style: TextStyle(fontSize: 14.0)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Container(
                          //     height: 14,
                          //     width: 25,
                          //     child: Image(
                          //       image: AssetImage(
                          //         'assets/linkedin.png',
                          //       ),
                          //     )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            user.linkedIn,
                            style: TextStyle(
                                fontSize: 14.0, color: Color(0xffD0BCFF)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Row(
                        children: [
                          Text("296", style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            "Following ",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0XFFBFBFBF),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("300", style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0XFFBFBFBF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfilePage(),
                              ));
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
