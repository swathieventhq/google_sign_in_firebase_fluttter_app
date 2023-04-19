import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/notofications_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/notifications/notifications_page.dart';

class NotificationsListViewBuilderPage extends StatefulWidget {
  @override
  State<NotificationsListViewBuilderPage> createState() => _NotificationsListViewBuilderPageState();
}

class _NotificationsListViewBuilderPageState extends State<NotificationsListViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ListOfNoticationsObjects.notifications.length,
        itemBuilder: (context, index) {
          return NotificationsPage(
            notifications: ListOfNoticationsObjects.notifications[index],
          );
        },
      ),
    );
  }
}