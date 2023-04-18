import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/list_activity_item.dart';
import 'package:google_sign_in_firebase_fluttter_app/models/compose_activity_page.dart';

/// Page that displays the "user" Stream feed group.
///
/// A list of the activities that you've posted.
///
/// Displays your reactions, and reaction counts.
class PostsTab extends StatefulWidget {
  const PostsTab({
    Key? key,
  }) : super(key: key);

  @override
  State<PostsTab> createState() => _PostsTabState();
}

class _PostsTabState extends State<PostsTab> {
  final EnrichmentFlags _flags = EnrichmentFlags()
    ..withReactionCounts()
    ..withOwnReactions();

  bool _isPaginating = false;

  static const _feedGroup = 'user';

  Future<void> _loadMore() async {
    // Ensure we're not already loading more activities.
    if (!_isPaginating) {
      _isPaginating = true;
      context.feedBloc
          .loadMoreEnrichedActivities(feedGroup: _feedGroup)
          .whenComplete(() {
        _isPaginating = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final client = context.feedClient;
    return Scaffold(
      // appBar: AppBar(title: const Text('Your posts')),
      body: FlatFeedCore(
        feedGroup: _feedGroup,
        userId: client.currentUser?.id,
        loadingBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        emptyBuilder: (context) => const Center(child: Text('No activities')),
        errorBuilder: (context, error) => Center(
          child: Text(error.toString()),
        ),
        limit: 10,
        flags: _flags,
        feedBuilder: (
            BuildContext context,
            activities,
            ) {
          return RefreshIndicator(
            onRefresh: () {
              return context.feedBloc.refreshPaginatedEnrichedActivities(
                feedGroup: _feedGroup,
                flags: _flags,
              );
            },
            child: ListView.separated(
              itemCount: activities.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                bool shouldLoadMore = activities.length - 3 == index;
                if (shouldLoadMore) {
                  _loadMore();
                }
                return ListActivityItem(
                  activity: activities[index],
                  feedGroup: _feedGroup,
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: Container(
        height: 48,
        width: 48,
        child: FloatingActionButton(
          backgroundColor: Color(0xff7C2FEB),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => const ComposeActivityPage()),
            );
          },
          tooltip: 'Add Activity',
          child: const Icon(Icons.add,size: 44.0,color: Color(0XFFFFFFFF),),
        ),
      ),
    );
  }
}
