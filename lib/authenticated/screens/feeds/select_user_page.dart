import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/demo_user.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/user_tile.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_navigation_bar_widget.dart';




/// Page to select from connect as one of the [DemoUser]s.
class SelectUserPage extends StatelessWidget {
  const SelectUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select user'),backgroundColor: Colors.black),
      body: ListView(
        children: demoUsers
            .map(
              (demoUser) => UserTile(
            user: demoUser.user,
            onTap: () async {
              try {
                await context.feedClient
                    .setUser(demoUser.user, demoUser.token);
                await context.feedBloc.followFeed(
                  followerFeedGroup: 'timeline',
                  followeeFeedGroup: 'user',
                  followeeId: demoUser.user.id!,
                );

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  BottomNavigationBarWidget(),
                  ),
                );
              } on Exception catch (e, st) {
                debugPrintStack(stackTrace: st);
              }
            },
          ),
        )
            .toList(),
      ),
    );
  }
}






