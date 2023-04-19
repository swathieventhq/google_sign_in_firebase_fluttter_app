import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/Upcoming_events.dart';

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