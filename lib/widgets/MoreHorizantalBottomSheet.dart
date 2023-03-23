
import 'package:flutter/material.dart';

class MoreHorizantalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
   //   width: 360,
      height: 400,
      color: Color(0xff151318),
      child: Container(
     //width: 360,
        height: 299,
        decoration: BoxDecoration(
            color: Color(0xff151318),
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
                  child: Row(
                    children: [
                      Icon(Icons.save_alt_outlined,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:24),
                  child: Row(
                    children: [
                      Icon(Icons.share,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('Share',style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Icon(Icons.visibility_off,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('I do not want to see this' ,style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Icon(Icons.close,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Icon(Icons.delete,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('Remove connection with user',style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Icon(Icons.flag,color: Colors.white,),
                      SizedBox(width: 8,),
                      Text('Report Post',style: TextStyle(color: Colors.white,fontSize: 24),),
                    ],
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





