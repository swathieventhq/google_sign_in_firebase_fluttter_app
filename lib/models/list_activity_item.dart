import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/comments_page.dart';
import '../models/demo_user.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

/// UI widget to display an activity/post.
///
/// Shows the number of likes and comments.
///
/// Enables the current [User] to like the activity, and view comments.
class ListActivityItem extends StatefulWidget {
  const ListActivityItem({
    Key? key,
    required this.activity,
    required this.feedGroup,
  }) : super(key: key);

  final EnrichedActivity activity;
  final String feedGroup;

  @override
  State<ListActivityItem> createState() => _ListActivityItemState();
}

class _ListActivityItemState extends State<ListActivityItem> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final actor = widget.activity.actor!;
    final attachments = (widget.activity.extraData)?.toAttachments();
    final reactionCounts = widget.activity.reactionCounts;
    final ownReactions = widget.activity.ownReactions;
    final isLikedByUser = (ownReactions?['like']?.length ?? 0) > 0;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        flex: 9,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(actor.profileImage),
                              ),
                            ),
                            Text(actor.fullName),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                actor.handle,
                                style: Theme.of(context).textTheme.caption,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                              ),
                            ),
                          ],
                        )),
                    // Spacer(),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: PopupMenuButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Report Post'),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Text('Follow Post'),
                                  SizedBox(
                                    width: 34,
                                  ),
                                  Switch(
                                    // This bool value toggles the switch.
                                    value: isSwitched,
                                    activeColor: Colors.red,
                                    onChanged: (bool value) {
                                      // This is called when the user toggles the switch.
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(child: Text('${widget.activity.object}')),
                ),
                if (attachments != null && attachments.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.network(attachments[0].url),
                  ),
                Divider(height: 4),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          if (reactionCounts?['like'] != null)
                            Text(
                              '${reactionCounts?['like']}',
                              style: Theme.of(context).textTheme.caption,
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (reactionCounts?['comment'] != null)
                              Container(
                                child: Text(
                                  '${reactionCounts?['comment']}',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(child: const Text("comments")),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28,
                              child: IconButton(
                                iconSize: 16,
                                onPressed: () {
                                  if (isLikedByUser) {
                                    context.feedBloc.onRemoveReaction(
                                      kind: 'like',
                                      activity: widget.activity,
                                      reaction: ownReactions!['like']![0],
                                      feedGroup: widget.feedGroup,
                                    );
                                  } else {
                                    context.feedBloc.onAddReaction(
                                        kind: 'like',
                                        activity: widget.activity,
                                        feedGroup: widget.feedGroup);
                                  }
                                },
                                icon: isLikedByUser
                                    ? const Icon(Icons.thumb_up_rounded)
                                    : const Icon(Icons.thumb_up_outlined),
                              ),
                            ),
                            Container(child: const Text("Like")),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Row(
                          children: [
                            Container(
                              width: 28,
                              child: IconButton(
                                iconSize: 16,
                                onPressed: () =>
                                    _navigateToCommentPage(context),
                                icon: const Icon(Icons.mode_comment_outlined),
                              ),
                            ),
                            Text("comment"),
                          ],
                        ),
                        //   SizedBox(width:70),
                        //    Expanded(
                        //
                        //    ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToCommentPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => CommentsPage(
          activity: widget.activity,
        ),
      ),
    );
  }
}
