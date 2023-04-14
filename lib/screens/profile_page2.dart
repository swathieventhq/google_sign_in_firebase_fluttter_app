import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/about_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/events_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/posts_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/utilities/profile_view.dart';

class ProfilePage2 extends StatefulWidget {
  const ProfilePage2({Key? key}) : super(key: key);

  @override
  State<ProfilePage2> createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2>
//with TickerProviderStateMixin
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: Color(0xff000000),
                collapsedHeight: 250,
                expandedHeight: 250,
                flexibleSpace: ProfileView(),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(
                  tabBar: TabBar(
                    labelColor: Color(0xffD0BCFF),
                    unselectedLabelColor: Color(0xffCAC4D0),
                    indicatorColor: Color(0xffD0BCFF),
                    tabs: [
                      Tab(
                        text: "Posts",
                      ),
                      Tab(
                        text: "Events",
                      ),
                      Tab(
                        text: "About",
                      ),
                    ],
                  ),
                ),
                floating: true,
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Center(
                child: PostsTab(),
              ),
              Center(
                child: EventsTab(),
              ),
              Center(
                child: AboutTab(),
              ),
            ],
          ),
        ),
      ),
    );
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
