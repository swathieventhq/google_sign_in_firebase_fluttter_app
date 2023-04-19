import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_listview_builder.dart';

class PastEvents extends StatefulWidget {
  const PastEvents({Key? key}) : super(key: key);

  @override
  State<PastEvents> createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  @override
  Widget build(BuildContext context) {
    return EventsPage();
  }
}