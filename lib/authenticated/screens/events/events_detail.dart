import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_details_object.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/utilities/tabs/event_details_tab.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_event_details.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_events_to_attend.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_profile_page.dart';

class EventDetail extends StatefulWidget {
  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: eventDetails.map((event) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: SizedBox(
                    height: 201,
                    child: Image.asset(
                      event.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(event.eventTime,
                            style: TextStyle(
                                color: Color(0XFF43FD51), fontSize: 14.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child:
                            Text(event.eventName, style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(event.eventHost,
                            style: TextStyle(
                                color: Color(0XFF9D9D9D), fontSize: 14.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month_rounded,
                              color: Color(0XFFE1E1E1),
                              size: 14.0,
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            Text(event.eventDate,
                                style: TextStyle(
                                    color: Color(0XFFE1E1E1), fontSize: 14.0)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: Color(0XFFE1E1E1),
                              size: 14.0,
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            Text(event.eventDuration,
                                style: TextStyle(
                                    color: Color(0XFFE1E1E1), fontSize: 14.0)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.keyboard_voice_rounded,
                              color: Color(0XFFE1E1E1),
                              size: 14.0,
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            Text(event.eventType,
                                style: TextStyle(
                                    color: Color(0XFFE1E1E1), fontSize: 14.0)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 17.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.people_alt_rounded,
                              color: Color(0XFFE1E1E1),
                              size: 14.0,
                            ),
                            SizedBox(
                              width: 14.0,
                            ),
                            Text(event.attendees,
                                style: TextStyle(
                                    color: Color(0XFFE1E1E1), fontSize: 14.0)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0,),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    isDismissible: true,
                                    enableDrag: true,
                                    isScrollControlled: false,
                                    context: context,
                                    builder: (context) => BottomSheetEventsToAttend(),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff7C2FEB),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Text(
                                    'Attend',
                                    style: TextStyle(
                                        fontSize: 14.0, color: Color(0XFFFFFFFF))),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff7C2FEB),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text(
                                      'Share',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Color(0XFFFFFFFF))),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              height: 28.0,
                              width: 28.0,
                              child: Expanded(
                                child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isDismissible: true,
                                      enableDrag: true,
                                      isScrollControlled: false,
                                      context: context,
                                      builder: (context) => BottomSheetEventDetails(),
                                    );
                                  },
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 14,
                                    color: Color(0xffffffff),
                                  ),
                                  style: TextButton.styleFrom(
                                    side: BorderSide(
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
