import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/Upcoming_events.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/past_events.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_object_list2.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body:Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Color(0xffD0BCFF),
              unselectedLabelColor: Color(0xffCAC4D0),
              indicatorColor: Color(0xffD0BCFF),
              tabs: [
                Tab(
                  text: "Upcoming Events",
                ),
                Tab(
                  text: "Past Events",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: ListOfObjects.items.length,
                    itemBuilder: (context, index) {
                      return UpcomingEvents(
                        items: ListOfObjects.items[index],
                      );
                    },
                  ),
                  PastEvents(),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
