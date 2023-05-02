import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_details_object.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/user_preferences.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/components/search_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/about_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/event_details_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/events_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/posts_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_detail.dart';


import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/search_member_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/speakers_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';
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
        appBar: AppBar(
        backgroundColor: kAppBarColor,
        ),
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
               EventDetail(),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: kSecondaryColor,
                  unselectedLabelColor: kUnselectedLabelColor,
                  indicatorColor: kSecondaryColor,
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
