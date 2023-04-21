import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MoreHorizantalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      color: kBottomSheetContainer1Color,
      child: Container(
    height: 330,
     //  height: 100,
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
                    Icon(FontAwesomeIcons.bookmark,size:16.0,color: Colors.white,),
                    SizedBox(width: 8,),
                    Expanded(child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 14),)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.shareFromSquare,size:16.0,color: Colors.white,),
                    SizedBox(width: 8,),
                    Expanded(child: Text('Share via',style: TextStyle(color: Colors.white,fontSize: 14),)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.visibility_off,size:16.0,color: Colors.white,),
                    SizedBox(width: 8,),
                    Expanded(child: Text('I do not want to see this' ,style: TextStyle(color: Colors.white,fontSize: 14),)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.person_remove,size:16.0,color: Colors.white,),
                    SizedBox(width: 8,),
                    Expanded(child: Text('Remove connection with user',style: TextStyle(color: Colors.white,fontSize: 14),)),
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
                    SizedBox(width: 8,),
                    Expanded(child: Text('Report Post',style: TextStyle(color: Colors.white,fontSize: 14),)),
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





