import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetEventsToAttend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      // color: Colors.black87,
      color: Color(0xff151318),
      child: Container(
        height: 170,
        //  height: 100,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 26.0,
                ),
                child: Container(
                  child: Icon(
                    Icons.maximize,
                    size: 36,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Thanks, we\'ll send you event updates and notify you when it starts ',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Your response is visible to the host, your connections and others who have responded.',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff7C2FEB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Text('Not Now',
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0XFFFFFFFF))),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff7C2FEB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text('Add to Calender',
                            style: TextStyle(
                                fontSize: 14.0, color: Color(0XFFFFFFFF))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
