import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/edit_profile_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/feeds/create_post_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_profile_page.dart';

class SpeakerView extends StatelessWidget {

  final double coverHeight = 110;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xff151318),
        child: Column(
          children: [
            Column(
              children: [
                buildTop(),
                 Padding(
                   padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                   child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Row(
                                  children: [
                                    Text('Prajaktha', style: TextStyle(fontSize: 16.0)),
                                    SizedBox(
                                      width:4,
                                    ),
                                    Text('Chaudhari', style: TextStyle(fontSize: 16.0)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Text('Product Designer,',
                                      style: TextStyle(fontSize: 16.0)),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text('SaaS Insider',
                                      style: TextStyle(fontSize: 16.0)),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text('100,200 members',
                                  style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0XFF332F3F),
                                    ),
                                  ),
                                  onPressed: () {},
                                 child: Text('Follow',style: TextStyle(color: Color(0XFFFFFFFF)),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                ),
                 ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCoverImage() => Container(
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10.0),
   ),
    child: Image.asset(
      'assets/red.png',
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


