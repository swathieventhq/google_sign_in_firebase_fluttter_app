import 'package:google_sign_in_firebase_fluttter_app/models/dyte.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/chat_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/dyte_meeting_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/groups_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/members_page2.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/search_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/timeline_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/events_page2.dart';
// import 'package:google_sign_in_firebase_fluttter_app/models/events_listView_builder.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/notifications_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/side_bar_menu_nav_drawer.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/custom_search_delegate.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends State<BottomNavigationBarWidget> {
  final screens = [
    // HomePage(),
    TimelinePage(),
    MembersPage2(
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
    NotificationsPage(),
    EventsPage(),
    // EventsPage(),
   MembersPage()

    //  DyteMeetingPage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(thickness: 1.0,color: Color(0xFFFFFFFF),),
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
               color: Color(0xff514C5F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
              padding: EdgeInsets.only(left: 12.18,),
                child: Container(
                  child: Row(children: [
                    Icon(Icons.search,size: 18,color: Color(0xffCAC4D0),),
                    SizedBox(width: 6,),
                    Text("Search",style: TextStyle(color: Color(0xffCAC4D0),fontSize: 14),),
                  ],),
                ),
              ),
              // child: TextField(
              //   decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Color(0xff514C5F),
              //       prefixIcon: const Icon(Icons.search),
              //       hintText: 'Search...',
              //
              //       // border: InputBorder.none,
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: const BorderSide(color: Colors.blue),
              //       )
              //   ),
              // ),
            ),
          ),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {
          //
          //     // method to show the search bar
          //     // showSearch(
          //     //     context: context,
          //     //     // delegate to customize the search bar
          //     //     delegate: CustomSearchDelegate());
          //
          //
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => SearchPage(),
          //       ),
          //     );
          //
          //   },
          //   icon: const Icon(Icons.search),
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              icon: Icon(Icons.chat,color: Color(0xffBDBDBD),),
            ),
          ),
        ],
        backgroundColor: Color(0xff000000),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundColor: Color(0xff514C5F),
            child: Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }),
          ),
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffCAC4D0),
        unselectedItemColor: Color(0xff7A7A7A),
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
