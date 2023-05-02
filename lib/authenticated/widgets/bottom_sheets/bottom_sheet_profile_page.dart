import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';

class BottomSheetProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: kBottomSheetContainer1Color,
      child: Container(
        height: 350,
        decoration: BoxDecoration(
            color: kBottomSheetContainer2Color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6.0,right: 35.0),
                child: Container(child: Icon(Icons.maximize,size: 60,)),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.send,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Send profile in a message',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.share,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Share via',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.contacts_rounded,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Contact info',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.person_add_alt_1_rounded,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Connect',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.send,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Personalise invite',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.info,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('About this profile',style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.flag,size:16.0,color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Report this post',style: TextStyle(color: Colors.white,fontSize: 14),),
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





