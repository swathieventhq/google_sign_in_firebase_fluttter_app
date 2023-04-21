import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_events_page.dart';

class SeeAllEvents extends StatelessWidget {
  const SeeAllEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Color(0xFF151318),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Image(
                    image: AssetImage('assets/saasstr.png'),
                    height: 34,
                    width: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 9.0,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SaaStr Europa',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                            color: Color(0XFFE1E1E1),
                            size: 14.0,
                          ),
                          SizedBox(width: 4.0,),
                          Text(
                            'tue, Jun 6 - Wed, jun 7, 2023 ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0XFFE1E1E1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.videocam_rounded,
                            color: Color(0XFF7A7A7A),
                            size: 14.0,
                          ),
                          SizedBox(width: 4.0,),
                          Text(
                            'In Person',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0XFF7A7A7A),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(width: 4.0,),
                          Text(
                            'By SaaStr',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0XFF7A7A7A),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isDismissible: true,
                        enableDrag: true,
                        isScrollControlled: false,
                        context: context,
                        builder: (context) => BottomSheetEventsPage(),
                      );
                    },
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
