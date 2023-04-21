import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/notofications_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/chats/chats_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/chats/dyte.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/chats/chats_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/chats/dyte_meeting_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/groups/groups_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/members/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/components/search_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/feeds/timeline_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/members/members_page2.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/notifications/notifications_listview_builder.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/notifications/notifications_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/user_preferences.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/side_bar_menu_nav_drawer.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends State<BottomNavigationBarWidget> {
  final user = UserPreferences().myUser;
  final screens = [
    // HomePage(),
    TimelinePage(),
    MembersPage(
      firstName: '',
      lastName: '',
      email: '',
      phone: '',
      companyName: '',
      linkedInURL: '',
      jobFunction: '',
      jobRole: '',
    ),
    GroupsPage(),
    NotificationsListViewBuilderPage(),
    EventsPage(),
    MembersPage2(),

    //  DyteMeetingPage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(imagePath: ''),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            thickness: 1.0,
            color: kAppBarDividerColor,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: Container(
              width: double.infinity,
              height: 31,
              decoration: BoxDecoration(
                color: kSearchBarColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.18,
                ),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 18,
                        color: kSearchBarTextColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Search",
                        style:
                            TextStyle(color: kSearchBarTextColor, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatsPage()),
                );
              },
              icon: Icon(
                Icons.chat,
                color: Color(0xffBDBDBD),
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            child: Builder(builder: (context) {
              return GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    user.coverImagePath,
                  ),
                ),
              );
            }),
          ),
        ),
        ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kBottomNavigationSelectedItemColor,
        unselectedItemColor: kBottomNavigationUnselectedItemColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBottomNavigationBgColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_rounded),
            label: 'Members',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: 'Groups',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.memory),
            label: 'Members2',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
