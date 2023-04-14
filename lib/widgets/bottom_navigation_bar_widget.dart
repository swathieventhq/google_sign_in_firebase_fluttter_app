import 'package:google_sign_in_firebase_fluttter_app/models/dyte.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/dyte_meeting_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/timeline_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_listView_builder.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/notifications_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/side_bar_menu_nav_drawer.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/custom_search_delegate.dart';



class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends State<BottomNavigationBarWidget> {
  final screens = [
  // HomePage(),
    TimelinePage(),
   MembersPage(),
    EventsPage(),
    NotificationsPage(),
   DyteMeetingPage(),

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate()
              );
            },
            icon: const Icon(Icons.search),
          )
        ],


        backgroundColor: Colors.black,
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.person,size: 30,color: Colors.black,),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }
          ),
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Members',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Call',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
