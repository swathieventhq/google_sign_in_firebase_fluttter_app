import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      color: Color(0xff151318),
      child: Container(
        height: 194,
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
                        Icons.delete,size: 16.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Expanded(
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 4.0,),
                        Expanded(
                          child: Text(
                            'Delete this notification',
                            style: TextStyle(color: Color(0XFFBFBFBF), fontSize: 12),
                          ),
                        ),
                      ],),
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
                       Icons.notifications_off_rounded,size: 16.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 26,
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                              'Turn Off',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            )),
                        SizedBox(height: 4.0,),
                        Expanded(
                            child: Text(
                              'Delete this notification',
                              style: TextStyle(color: Color(0XFFBFBFBF), fontSize: 12),
                            )),
                      ],
                    ),
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
                        Icons.settings,size: 16.0,
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


