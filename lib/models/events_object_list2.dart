

class ObjectList {
  late final String logo;
  late final String eventName;
  late final String eventDate ;
  late final String eventType;
   late final  String eventHost;

  ObjectList({
    required this.logo,
    required this.eventName,
    required this.eventDate,
    required this.eventType,
     required this.eventHost,
  });
}

class ListOfObjects {
  static List items = [
    ObjectList(
      logo: 'assets/saasinsider.png',
      eventName: 'Design Thinking Group Design Thinking Group',
      eventDate: 'Tue, Feb 28 - Wed, Mar 1, 2023 ',
      eventType: 'Online',
      eventHost: '- By Design System',
    ),
    ObjectList(
        logo: 'assets/google.png',
        eventName: 'Virtual Meet Mar 2021',
        eventDate: 'Saturday , April 13 2019',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/microsoft.png',
        eventName: 'Meetup May 2021',
        eventDate: 'Saturday , January 12 2019',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/ibm.png',
        eventName: 'Annual Meetup Jan 2023',
        eventDate: 'Wednesday , January 27 2023 ',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/salesforce.png',
        eventName: 'Virtual Meet July 2023',
        eventDate: 'Saturday , March 12 2023',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/sap.png',
        eventName: 'Meetup september 2023',
        eventDate: 'Saturday , November 15 2023',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/justcall.png',
        eventName: 'Virtual December 2023',
        eventDate: 'Saturday , December 12 2023',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/saaslabs.png',
        eventName: 'Meetup January 2024',
        eventDate: 'Saturday , January 12 2024',
        eventType: 'Online',
      eventHost: 'By Design System',
    ),
  ];
}
