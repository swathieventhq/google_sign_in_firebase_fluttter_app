import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/events_object_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/event_details_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/more_horizantal_bottom_sheet_feeds_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/widgets/bottom_sheets/bottom_sheet_events_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/constants.dart';

class UpcomingEvents extends StatefulWidget {
  UpcomingEvents({required this.items});
  final ObjectList items;

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetailsPage() ),);
      },
      child: Card(
        color: kCardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                      image: AssetImage(widget.items.logo),
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
                                widget.items.eventName,
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
                                    color: kEventsDateTimeColor,
                                    size: 14.0,
                                  ),
                                  SizedBox(width: 4.0,),
                                  Text(
                                    widget.items.eventDate,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: kEventsTypeHostColor,
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
                                    widget.items.eventType,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: kEventsTypeHostColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(width: 4.0,),
                                  Text(
                                    widget.items.eventHost,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: kEventsTypeHostColor,
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
      ),
    );
  }
}
