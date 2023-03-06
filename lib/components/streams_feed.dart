import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/select_user_page.dart';


class StreamFeeds extends StatelessWidget {
  final client =
  StreamFeedClient('jeek3463ua3s');//  TODO: Add Stream API Token
  late final feedBloc = FeedBloc(client: client);



  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      builder: (context, child) => FeedProvider(
        bloc: FeedBloc(
          client: client,
        ),
        child: child!,
      ),
      home: const SelectUserPage(),
    );
  }
}



