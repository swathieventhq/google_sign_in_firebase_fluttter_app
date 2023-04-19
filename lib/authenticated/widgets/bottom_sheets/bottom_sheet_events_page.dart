import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BottomSheetEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      color: Color(0xff151318),
      child: Container(
        height: 330,
        //  height: 100,
        decoration: BoxDecoration(
            color: Colors.black87 ,
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
                      Icon(FontAwesomeIcons.shareFromSquare,size:16.0,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Share this Event',style: TextStyle(color: Colors.white,fontSize: 14),)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.calendar,size:16.0,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Add to Calender',style: TextStyle(color: Colors.white,fontSize: 14),)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.event,size:16.0,color: Colors.white,),
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
                      Icon(Icons.close,size:16.0,color: Colors.white,),
                      SizedBox(width: 8,),
                      Expanded(child: Text('Not Interested',style: TextStyle(color: Colors.white,fontSize: 14),)),
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
                      Expanded(child: Text('Report this Event',style: TextStyle(color: Colors.white,fontSize: 14),)),
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





