import 'package:google_sign_in_firebase_fluttter_app/models/dyte.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/chat_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/dyte_meeting_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/members_page2.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/timeline_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_listView_builder.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/notifications_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/widgets/side_bar_menu_nav_drawer.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/custom_search_delegate.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/groups_page.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends State<BottomNavigationBarWidget> {
  bool typing = false;
  final screens = [
    // HomePage(),
    TimelinePage(),
    MembersPage(),
    GroupsPage(),
    NotificationsPage(),
    EventsPage(),
    MembersPage2(firstName: '', lastName: '', email: '', phone: '', companyName: '', linkedInURL: '', jobFunction: '', jobRole: '')
    // DyteMeetingPage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: <Widget> [
// Row(
//   children: [
//     Container(
//       color: Colors.cyanAccent,
//       padding: EdgeInsets.symmetric(vertical: 90,horizontal: 10),
//       alignment: Alignment.center,
//       child: TextField(
//
//         // controller: textController, We will declare this later
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             Icons.arrow_back_ios_new_sharp,
//             color: Colors.white,),
//           hintText: "Search",
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(25)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(25),
//               borderSide: BorderSide(width: 2)),
//         ),
//       ),
//     ),
    IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (Context) => ChatPage()));
      },
      icon: Icon(Icons.chat),
    ),
 ],
// ),

        // ],
          // IconButton(
          //   onPressed: () {
          //     // method to show the search bar
          //     showSearch(
          //         context: context,
          //         // delegate to customize the search bar
          //         delegate: CustomSearchDelegate()
          //     );
          //   },
          //   icon: const Icon(Icons.search),
          // ),



        // backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            //  backgroundImage: AssetImage('assets/swathi.jpg'),
            backgroundColor: Colors.grey,
            child: Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.person,
                  size: 20,
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
        backgroundColor: Colors.black87,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
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
            icon: Icon(Icons.memory_sharp),
            label: 'members page2',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
