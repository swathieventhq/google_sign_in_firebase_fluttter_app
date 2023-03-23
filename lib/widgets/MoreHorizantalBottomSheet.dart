
import 'package:flutter/material.dart';

class MoreHorizantalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 100,
      color: Colors.black87,
      child: Container(
     //  height: 100,
        decoration: BoxDecoration(
            color: Colors.black87 ,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.save_alt_outlined,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.share,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('Share',style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.visibility_off,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('I do not want to see this' ,style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.close,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('Save',style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.delete,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('Remove connection with user',style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.flag,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('Report Post',style: TextStyle(color: Colors.white,fontSize: 24),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





