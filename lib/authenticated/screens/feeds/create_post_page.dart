import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_create_post.dart';

import '../../../constants.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151318),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff151318),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(thickness: 1.0,color: Color(0xFFFFFFFF),),
          ),
          title: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child:
                    Text("Cancel", style: TextStyle(color: Color(0xFFFFFFFF))),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                ),
              ),
              // SizedBox(
              //   width: 6.0,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPostButtonDisabledColor),
                  onPressed: () {},
                  child: Text('Post',style: TextStyle(fontSize: 14,color: kPostButtonTextDisabledColor),),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 9.0),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/swathicgowda.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Swathi Gowda',
                              style: TextStyle(fontSize: 16.0)),
                          // OutlinedButton(
                          //   style: OutlinedButton.styleFrom(
                          //     side: BorderSide(
                          //       color: Color(0xffffffff),
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(5.0),
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //         padding: const EdgeInsets.only(right: 8.0),
                          //         child: Icon(
                          //           Icons.public,
                          //           color: Color(0XFFBEBEBE),
                          //         ),
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.only(right: 18.0),
                          //         child: Text(
                          //           'Friends',
                          //           style: TextStyle(
                          //             color: Color(0XFFBEBEBE),
                          //           ),
                          //         ),
                          //       ),
                          //       Icon(
                          //         Icons.arrow_drop_down,
                          //         color: Color(0XFFBEBEBE),
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:
                        'What\'s happening? what do you wanna talk about?',
                    hintStyle: TextStyle(fontSize: 14,color: kCreatePostTextAndIconsColor),
                  ),
                ),
                Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.public,
                    //       color: Color(0XFFBEBEBE),
                    //     ),
                    //     SizedBox(width:8.0,),
                    //     Text(
                    //       'Anyone can reply',
                    //       style: TextStyle(
                    //         color: Color(0XFFBEBEBE),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.image,
                            color: kCreatePostTextAndIconsColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.video_camera_back_rounded,
                            color: kCreatePostTextAndIconsColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month_rounded,
                            color: kCreatePostTextAndIconsColor,
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.more_horiz_rounded,
                              color: kCreatePostTextAndIconsColor,
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                isDismissible: true,
                                enableDrag: true,
                                isScrollControlled: false,
                                //   barrierColor : Colors.transparent,
                                context: context,
                                builder: (context) => BottomSheetCreatePost(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
