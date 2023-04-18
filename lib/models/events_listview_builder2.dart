import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_object_list2.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/Upcoming_events.dart';

import '../screens/events_page.dart';


class EventsPage extends StatefulWidget {
  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ListOfObjects.items.length,
        itemBuilder: (context, index) {
          return UpcomingEvents(
            items: ListOfObjects.items[index],
          );
        },
      ),
    );
  }
}