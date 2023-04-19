import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetEventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153,
      color: Color(0xff151318),
      child: Container(
        height: 153,
        //  height: 100,
        decoration: BoxDecoration(
          color: Colors.black87,
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
                            'Add to Calender ',
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
                            'Report this Event',
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


