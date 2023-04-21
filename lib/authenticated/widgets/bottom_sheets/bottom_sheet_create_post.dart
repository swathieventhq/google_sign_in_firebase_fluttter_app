import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';

class BottomSheetCreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      color: kBottomSheetContainer1Color,
      child: Container(
        height: 194,
        //  height: 100,
        decoration: BoxDecoration(
          color: kBottomSheetContainer2Color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Column(
children: [
  Padding(
    padding: const EdgeInsets.only(top: 6.0,right: 35.0),
    child: Container(child: Icon(Icons.maximize,size: 60,)),
  ),
Expanded(
child: TextButton(
onPressed: () {},
child: Row(
children: [
Icon(
FontAwesomeIcons.image,size: 16.0,
color: Colors.white,
),
SizedBox(
width: 26,
),
Expanded(
child: Text(
'Add a photo',
style: TextStyle(color: Colors.white, fontSize: 14),
)),
],
),
),
),
Expanded(
child: TextButton(
onPressed: () {},
child: Row(
children: [
Icon(
FontAwesomeIcons.video,size: 16.0,
color: Colors.white,
),
SizedBox(
width: 26,
),
Expanded(
child: Text(
'Take a video',
style: TextStyle(color: Colors.white, fontSize: 14),
)),
],
),
),
),
Expanded(
child: TextButton(
onPressed: () {},
child: Row(
children: [
Icon(
Icons.calendar_month_rounded,size: 16.0,
color: Colors.white,
),
SizedBox(
 width: 26,
 ),
 Expanded(
 child: Text(
 'Create an event ',
 style: TextStyle(color: Colors.white, fontSize: 14),
 )),
 ],
),
 ),
 ),
 ],
),
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(top: 40.0,left: 16.0),
// child: Container(
// child: Column(
// children: [
// Expanded(
// child: TextButton(
// onPressed: () {},
// child: Row(
// children: [
// Icon(
// FontAwesomeIcons.image,
// color: Colors.white,
// ),
// SizedBox(
// width: 26,
// ),
// Expanded(
// child: Text(
// 'Add a photo',
// style: TextStyle(color: Colors.white, fontSize: 24),
// )),
// ],
// ),
// ),
// ),
// Expanded(
// child: TextButton(
// onPressed: () {},
// child: Row(
// children: [
// Icon(
// FontAwesomeIcons.video,
// color: Colors.white,
// ),
// SizedBox(
// width: 26,
// ),
// Expanded(
// child: Text(
// 'Take a video',
// style: TextStyle(color: Colors.white, fontSize: 24),
// )),
// ],
// ),
// ),
// ),
// Expanded(
// child: TextButton(
// onPressed: () {},
// child: Row(
// children: [
// Icon(
// Icons.calendar_month_rounded,
// color: Colors.white,
// ),
// SizedBox(
// width: 26,
// ),
// Expanded(
// child: Text(
// 'Create an event ',
// style: TextStyle(color: Colors.white, fontSize: 24),
// )),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// ),
