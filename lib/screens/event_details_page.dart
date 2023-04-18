import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/events_details_object.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/user_preferences.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/search_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/about_tab2.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/event_details_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/events_tab2.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/posts_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/events_details.dart';


import 'package:google_sign_in_firebase_fluttter_app/models/search_member_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/speakers_tab.dart';
class EventDetailsPage extends StatefulWidget {
  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {

  List<Members> members = allMembers;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      //  resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   bottom: const PreferredSize(
        //     preferredSize: Size.fromHeight(1),
        //     child: Divider(
        //       thickness: 1.0,
        //       color: Color(0xFFFFFFFF),
        //     ),
        //   ),
        //   title: GestureDetector(
        //     onTap: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => SearchPage(),
        //         ),
        //       );
        //     },
        //     child: Container(
        //       width: double.infinity,
        //       height: 31,
        //       decoration: BoxDecoration(
        //         color: Color(0xff514C5F),
        //         borderRadius: BorderRadius.circular(12),
        //       ),
        //       child: Padding(
        //         padding: EdgeInsets.only(left: 12.18),
        //         child: Container(
        //           child: Row(
        //             children: [
        //               Icon(
        //                 Icons.search,
        //                 size: 18,
        //                 color: Color(0xffCAC4D0),
        //               ),
        //               SizedBox(
        //                 width: 6,
        //               ),
        //               Text(
        //                 "Search",
        //                 style: TextStyle(color: Color(0xffCAC4D0), fontSize: 14),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   backgroundColor: Colors.black,
        // ),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(250.0),
                    child: Divider(thickness: 1.0,color: Color(0xFF5D5764),),
                  ),
                  automaticallyImplyLeading: false,
                  backgroundColor: Color(0xff000000),
                  collapsedHeight: 250,
                  expandedHeight: 250,
                  flexibleSpace: // ProfileBaseScreen(),

                  // ProfileView(),
               EventDetails(),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xffD0BCFF),
                  unselectedLabelColor: Color(0xffCAC4D0),
                  indicatorColor: Color(0xffD0BCFF),
                  tabs: [
                    Tab(
                      text: "Event Details",
                    ),
                    Tab(
                      text: "Speakers",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                   EventDetailsTab(),
                      SpeakersTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void searchMember(String query) {
    final suggestions = allMembers.where((member) {
      //  var member;
      final memberName = member.name.toLowerCase();
      final input = query.toLowerCase();
      return memberName.contains(input);
    }).toList();

    setState(() {
      members = suggestions;
    });
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate({required this.tabBar});

  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabBar;
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
