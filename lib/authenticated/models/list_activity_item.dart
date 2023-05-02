import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/feeds/comments_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';
import '../screens/user/demo_user.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/more_horizantal_bottom_sheet_feeds_page.dart';

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

//await user.removeActivityById('ACTIVITY_ID');


class _ListActivityItemState extends State<ListActivityItem> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final actor = widget.activity.actor!;
    final attachments = (widget.activity.extraData)?.toAttachments();
    final reactionCounts = widget.activity.reactionCounts;
    final ownReactions = widget.activity.ownReactions;
    final isLikedByUser = (ownReactions?['like']?.length ?? 0) > 0;
    // final removeActivityByID = widget.removeActivityByID.actor;
    return Card(
      elevation: 6,
      color: kCardColor,
      //  color: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 14, 12, 14),
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
                            Text(actor.fullName,
                                style: TextStyle(color: kFeedUsernameColor,fontSize: 16.0,fontWeight: FontWeight.w500)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                actor.handle,
                                // style: TextStyle(
                                //   color: kFeedUserHandleColor,
                                //     overflow: TextOverflow.ellipsis,
                                //   maxLines: 1,
                                //   softWrap: true,
                                // ),
                                style: Theme.of(context).textTheme.caption,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                               // selectionColor: kFeedUserHandleColor,
                              ),
                            ),
                          ],
                        )),
                    // Spacer(),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => MoreHorizantalBottomSheet(),
                              isDismissible: true,
                              enableDrag: true,
                              isScrollControlled: false,
                            );
                          },
                          icon: Icon(
                            Icons.more_horiz,
                            color: kMoreHorizColor,
                          ),
                        ),
                        // child: PopupMenuButton(
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(8.0)),
                        //   itemBuilder: (context) => [
                        //     PopupMenuItem(
                        //       child: Text('Report Post'),
                        //     ),
                        //     PopupMenuItem(
                        //       child: Row(
                        //         children: [
                        //           Text('Follow Post'),
                        //           SizedBox(
                        //             width: 34,
                        //           ),
                        //           Switch(
                        //             // This bool value toggles the switch.
                        //             value: isSwitched,
                        //             activeColor: Colors.red,
                        //             onChanged: (bool value) {
                        //               // This is called when the user toggles the switch.
                        //               setState(() {
                        //                 isSwitched = value;
                        //               });
                        //             },
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),
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
                  child: Expanded(child: Text('${widget.activity.object}',style: TextStyle(color: kFeedLabelColor,fontSize: 14.0)),),
                ),
                if (attachments != null && attachments.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.network(attachments[0].url),
                  ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 8.0),
                      child: Row(
                        children: [
                          reactionCounts?['like'] == null
                              ? Text("")
                              : reactionCounts?['like'] == 1
                                  ? Text(
                                      '${reactionCounts?['like']} like',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: kFeedLikeCommentCount,
                                      ),
                                    )
                                  : Text(
                                      '${reactionCounts?['like']} likes',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: kFeedLikeCommentCount,
                                      ),
                                    ),

                          // if (reactionCounts?['like'] != null)
                          //   Text(
                          //     '${reactionCounts?['like']}',
                          //     //  style: Theme.of(context).textTheme.caption,
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.normal,
                          //       color: Colors.white70,
                          //     ),
                          //   ),
                          // SizedBox(
                          //   width: 3,
                          // ),
                          // Container(
                          //     child: const Text(
                          //   "likes",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.normal,
                          //     color: Colors.white70,
                          //   ),
                          // )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            reactionCounts?['comment'] == null
                                ? Text("")
                                : reactionCounts?['comment'] == 1
                                    ? Text(
                                        '${reactionCounts?['comment']} comment',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: kFeedLikeCommentCount,
                                        ),
                                      )
                                    : Text(
                                        '${reactionCounts?['comment']} comments',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: kFeedLikeCommentCount,
                                        ),
                                      )

                            // if (reactionCounts?['comment'] != null)
                            //   Container(
                            //     child: Text(
                            //       '${reactionCounts?['comment']}',
                            //       // style: Theme.of(context).textTheme.caption,
                            //       style: TextStyle(
                            //         fontWeight: FontWeight.normal,
                            //         color: Colors.white70,
                            //       ),
                            //     ),
                            //   ),
                            // SizedBox(
                            //   width: 3,
                            // ),
                            // Container(
                            //   child: const Text(
                            //     "Comments",
                            //     style: TextStyle(
                            //       fontWeight: FontWeight.normal,
                            //       color: Colors.white70,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 5,
                  color: kFeedsDividerColor,
                  thickness: 1.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
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
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: IconButton(
                                iconSize: 16,
                                onPressed: () =>
                                    _navigateToCommentPage(context),
                                icon: const Icon(Icons.mode_comment_outlined),
                              ),
                            ),
                            Text("Comment"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 40,
                              child: IconButton(
                                iconSize: 16,
                                onPressed: () =>
                                    _navigateToCommentPage(context),
                                icon: const Icon(Icons.share),
                              ),
                            ),
                            Text("Share"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: IconButton(
                                iconSize: 16,
                                onPressed: () =>
                                    _navigateToCommentPage(context),
                                icon: const Icon(Icons.save_alt_outlined),
                              ),
                            ),
                            Text("Save"),
                          ],
                        ),
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
