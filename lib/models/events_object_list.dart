

import 'package:flutter/widgets.dart';

class ObjectList {
  final String logo;
  final String heading;
  final String subHeading;
  final String eventDate;
  final String likes;
  final String views;

  ObjectList({
    required this.logo,
    required this.heading,
    required this.subHeading,
    required this.eventDate,
    required this.likes,
    required this.views,
  });
}

class ListOfObjects {
  static List items = [
    ObjectList(
      logo:
      'assets/saasinsider.png',
      heading: 'Annual Meetup Jan 2021',
      subHeading: 'An in-depth study saas community',
      eventDate: 'Wednesday , November 27 2019 ',
      likes: '123',
      views: '456',
    ),
    ObjectList(
      logo:
      'assets/google.png',
      heading: 'Virtual Meet Mar 2021',
      subHeading: 'Startup Interactions',
      eventDate: 'Saturday , April 13 2019',
      likes: '231',
      views: '654',
    ),
    ObjectList(
      logo:
      'assets/microsoft.png',
      heading: 'Meetup May 2021',
      subHeading: 'Startup Collaboration',
      eventDate: 'Saturday , January 12 2019',
      likes: '213',
      views: '546',
    ),
    ObjectList(
      logo:
      'assets/ibm.png',
      heading: 'Annual Meetup Jan 2023',
      subHeading: 'WW CEO Event - Digital',
      eventDate: 'Wednesday , January 27 2023 ',
      likes: '156',
      views: '912',
    ),
    ObjectList(
      logo:
      'assets/salesforce.png',
      heading: 'Virtual Meet July 2023',
      subHeading: 'SAP Concur Leadership Cirle',
      eventDate: 'Saturday , March 12 2023',
      likes: '579',
      views: '856',
    ),
    ObjectList(
      logo:
      'assets/sap.png',
      heading: 'Meetup september 2023',
      subHeading: 'Startup Collaboration',
      eventDate: 'Saturday , November 15 2023',
      likes: '213',
      views: '546',
    ),
    ObjectList(
      logo:
      'assets/justcall.png',
      heading: 'Virtual December 2023',
      subHeading: 'Digital Experience Conference',
      eventDate: 'Saturday , December 12 2023',
      likes: '213',
      views: '546',
    ),
    ObjectList(
      logo:
      'assets/saaslabs.png',
      heading: 'Meetup January 2024',
      subHeading: 'Enterprise Connect',
      eventDate: 'Saturday , January 12 2024',
      likes: '213',
      views: '546',
    ),
  ];
}
