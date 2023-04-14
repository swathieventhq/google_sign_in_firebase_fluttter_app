import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/create_post.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/edit_profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/bottom_sheet_profile_page.dart';

class ProfileWidget extends StatelessWidget {
  final double coverHeight = 110;
  final double profileHeight = 144;

  ProfileWidget({
    required this.imagePath,
    required this.onClicked,
    required this.profileImagePath,
  });

  final VoidCallback onClicked;
  final String imagePath;
  final String profileImagePath;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildTop(),
      // Padding(
      //   padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      //   child: Expanded(
      //     child: Row(
      //       children: [
      //         Expanded(
      //           child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => CreatePostPage()),
      //               );
      //             },
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Color(0xff7C2FEB),
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(4)),
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Icon(Icons.add),
      //                 SizedBox(
      //                   width: 8,
      //                 ),
      //                 Text(" Create a post",style: TextStyle(fontSize: 14.0,),),
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           width: 11.88,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(right: 8.0),
      //           child: Container(
      //             width: 30,
      //             height: 30,
      //             child: TextButton(
      //               onPressed: () {
      //                 showModalBottomSheet(
      //                   isDismissible: true,
      //                   enableDrag: true,
      //                   isScrollControlled: false,
      //                   context: context,
      //                   builder: (context) =>
      //                       BottomSheetProfilePage(),
      //                 );
      //               },
      //               child: Icon(
      //                 Icons.more_horiz,
      //                 size: 14,
      //                 color: Color(0xffffffff),
      //               ),
      //               style: TextButton.styleFrom(
      //                 side: BorderSide(
      //                   color: Color(0xffffffff),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    ]);
  }

  Widget buildCoverImage() {
    final image = AssetImage(imagePath);
    return Stack(
      children: [
        Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: coverHeight,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildEditCameraIcon(Color(0XFFD0BCFF)),
            ],
          ),
        ),
      ]
    );
  }

  Widget buildEditCameraIcon(Color color) => buildCircle(
        all: 3.0,
        color: Color(0XFFFFFFFF),
        child: buildCircle(
          color: color,
          all: 4.0,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 15,
            color: Color(0XFFFFFFFF),
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          child: child,
          color: color,
        ),
      );

  Widget buildProfileImage() {
    final image = AssetImage(profileImagePath);
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Stack(
        children: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Image(
                fit: BoxFit.cover,
                image: image,
                height: 90,
                width: 90,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 4.0,
            child: buildEditAddIcon(
              Color(0XFFD0BCFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEditAddIcon(Color color) => buildCircle(
        all: 3.0,
        color: Color(0XFFFFFFFF),
        child: buildCircle(
          color: color,
          all: 0.0,
          child: Icon(
            Icons.add,
            size: 20,
            color: Color(0XFFFFFFFF),
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
