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
               padding: const EdgeInsets.all(6.0),
               child: Container(
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: NetworkImage(actor.profileImage),),
                       Text(actor.fullName,style: TextStyle(fontWeight: FontWeight.bold),),
                       Text(actor.handle, style: Theme.of(context).textTheme.caption,),
                     ],
                 ),
                ),
             ),
      Container(
        child: PopupMenuButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
            ),
            itemBuilder: (context) => [
            PopupMenuItem(
            child: Text('Report Post'),
      ),
      PopupMenuItem(
        child: Row(
          children: [
            Text('Follow Post'),
            SizedBox(width: 34,),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ],
        ),
      ),
      ],
    ),
      ),
      Padding(
               padding: const EdgeInsets.symmetric(vertical: 8.0),
               child: Text('${widget.activity.object}'),
             ),
             if (attachments != null && attachments.isNotEmpty)
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Image.network(attachments[0].url),
               ),
             Divider(
                 height: 4,
             thickness: 1,
              // endIndent: double.infinity,
             ),
              Row(
                     children: [
                       Row(
                         children: [
                           IconButton(
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
                                 ? const Icon(Icons.thumb_up_alt_rounded)
                                 : const Icon(Icons.thumb_up_alt_outlined),
                           ),
                           Text("Like"),
                           if (reactionCounts?['like'] != null)
                             Text(
                               '${reactionCounts?['like']}',
                               style: Theme
                                   .of(context)
                                   .textTheme
                                   .caption,
                             )
                         ],
                       ),
          ],
        ),
                         Row(
           children: [
             const SizedBox(width: 16),
             Row(
               children: [
                 IconButton(
                   iconSize: 16,
                   onPressed: () => _navigateToCommentPage(context),
                   icon: const Icon(Icons.mode_comment_outlined),
                 ),
                 Text("Comment"),
                 if (reactionCounts?['comment'] != null)
                   Padding(
                     padding: const EdgeInsets.only(left: 50),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text(
                           '${reactionCounts?['comment']}',
                           style: Theme.of(context).textTheme.caption,
                         ),
                       ],
                     ),
                   )
               ],
             )
           ],
         )
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



