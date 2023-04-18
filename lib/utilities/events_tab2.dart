import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_listView_builder.dart';

class EventsTab extends StatefulWidget {
  const EventsTab({Key? key}) : super(key: key);

  @override
  State<EventsTab> createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {
  @override
  Widget build(BuildContext context) {
    return EventsPage();

    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     body: Padding(
    //       padding: const EdgeInsets.only(left: 16.0, top: 19.0),
    //       child: Column(
    //         children: [
    //           Container(
    //             height: 28,
    //             child: TabBar(
    //               unselectedLabelColor: Color(0xff938F99),
    //               indicatorSize: TabBarIndicatorSize.label,
    //               indicator: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(6),
    //                 color: Color(0xffC164FE),
    //               ),
    //               tabs: [
    //                 Tab(
    //                   child: Container(
    //                     width: 74,
    //                     height: 28,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(6),
    //                         border:
    //                         Border.all(color: Color(0xff938F99), width: 1)),
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: Text("All Events"),
    //                     ),
    //                   ),
    //                 ),
    //                 Tab(
    //                   child: Container(
    //                     width: 117,
    //                     height: 28,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(6),
    //                         border:
    //                         Border.all(color: Color(0xff938F99), width: 1)),
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: Text(" Attended"),
    //                     ),
    //                   ),
    //                 ),
    //                 Tab(
    //                   child: Container(
    //                     width: 86,
    //                     height: 28,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(6),
    //                         border:
    //                         Border.all(color: Color(0xff938F99), width: 1)),
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: Text("Up Coming"),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(height:10,),
    //           Expanded(
    //             child: TabBarView(children: [
    //               Expanded(child: EventsPage()),
    //               Expanded(child: EventsPage()),
    //               Expanded(child: EventsPage()),
    //             ],),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
