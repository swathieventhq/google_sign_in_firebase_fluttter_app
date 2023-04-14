import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BottomSheetFeedsPge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      color: Color(0xff151318),
      child: Container(
    height: 360,
     //  height: 100,
      decoration: BoxDecoration(
          color: Colors.black87 ,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )
      ),
    child: Padding(
        padding: const EdgeInsets.only(top:46.31,left: 25.0,bottom: 23.15),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.bookmark,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:24),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.shareFromSquare,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Share via',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.visibility_off,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('I do not want to see this' ,style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 24),
              //   child: Row(
              //     children: [
              //       Icon(Icons.close,color: Colors.white,),
              //       SizedBox(width: 8,),
              //       Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.person_remove,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Remove connection with user',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.flag,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Report Post',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          ),
    );
  }
}





