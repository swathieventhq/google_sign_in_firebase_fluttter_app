import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/demo_user.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/user/follow_user_tile.dart';

import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';





/// Page that displays all [User]s, enabling the current user to
/// follow/unfollow specific users.
class MembersPage2 extends StatelessWidget {
  const MembersPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Members'),backgroundColor: Colors.black,),
      body: ListView(
        children: demoUsers
            .where((element) {
          return element.user.id != context.feedBloc.currentUser?.id;
        })
            .map((demoUser) => FollowUserTile(user: demoUser.user))
            .toList(),
      ),
    );
  }
}






