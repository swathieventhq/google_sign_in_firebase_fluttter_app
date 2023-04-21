
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_seeall_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_listview_builder.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_seeall.dart';
import '../speaker_view.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/Upcoming_events.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_events_page.dart';


import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/event_details_page.dart';



class EventDetailsTab extends StatefulWidget {
  // EventDetailsTab({required this.items});
  // final ObjectList items;
  @override
  State<EventDetailsTab> createState() => _EventDetailsTabState();
}

class _EventDetailsTabState extends State<EventDetailsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Padding(
              padding: const EdgeInsets.only(top: 21.0, bottom: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Event Details"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19.0, left: 10.0),
                    child: Text(
                      "Event Details. The Home Builders Association of St. Xxxxxx Valley (HBASJV), represented by the Showcase Committee, will present a Builders Showcase (“Showcase”) in October 2019. This show will feature homes which are of excellent design, workmanship and appeal to the public touring the homes. The Showcase will occur throughout Michiana on: • Saturday October 19th 1-6pm • Sunday October 20th 1-6pm",
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, top: 14.0, bottom: 14.0),
                  child: Text("Speaker"),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 14.0, bottom: 10.0, left: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 328,
                        height: 261,
                        child: Container(
                          width: 328,
                          height: 261,
                          decoration: BoxDecoration(
                            //  color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SpeakerView(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Padding(
              padding: const EdgeInsets.only(top: 21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, bottom: 14, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Other Events for You"),
                        TextButton(
                          child:
                          Text("See all", style: TextStyle(color:Color(0xffD0BCFF),)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  Scaffold(
                              appBar: AppBar(
                                backgroundColor: Color(0XFF151318),
                              ),
                              body: ListView.builder(
                                itemCount: ListOfObjects.items.length,
                                itemBuilder: (context, index) {
                                  return UpcomingEvents(
                                    items: ListOfObjects.items[index],
                                  );
                                },
                              ),
                            ),));
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SeeAllEvents(),
                  SeeAllEvents(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
