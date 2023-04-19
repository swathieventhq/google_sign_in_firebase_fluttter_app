import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/notofications_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_events_page.dart';
class NotificationsPage extends StatefulWidget {
   NotificationsPage({
  required this.notifications,
});
final  NotificationsObjectList notifications;

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
   return Card(
          color: Color(0xFF151318),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.notifications.logo)
                    ),
                    SizedBox(width: 9.0,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.notifications.userName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),

                          // Text(
                          //   widget.notifications.content,
                          //   textAlign: TextAlign.right,
                          //   style: TextStyle(
                          //     color: Color(0XFFE1E1E1),
                          //     fontWeight: FontWeight.w500,
                          //     fontSize: 14,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                   Column(children: [
                     Text(widget.notifications.time),
                     Container(
                       child: IconButton(
                         onPressed: () {
                           showModalBottomSheet(
                             isDismissible: true,
                             enableDrag: true,
                             isScrollControlled: false,
                             context: context,
                             builder: (context) => BottomSheetEventsPage(),
                           );
                         },
                         icon: Icon(
                           Icons.more_horiz,
                         ),
                       ),
                     ),
                   ],),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}
