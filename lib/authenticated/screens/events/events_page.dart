import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/Upcoming_events.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/past_events.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';

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
              labelColor:kSecondaryColor,
              unselectedLabelColor: kUnselectedLabelColor,
              indicatorColor: kSecondaryColor,
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
