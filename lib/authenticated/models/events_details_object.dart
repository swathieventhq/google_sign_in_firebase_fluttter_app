class EventList {
  final String eventTime;
  final String image;
  final String eventName;
  final String eventDate;

  final String eventType;
  final String eventHost;
  final String eventDuration;
  final String attendees;

  EventList({
    required this.eventTime,
    required this.image,
    required this.eventName,
    required this.eventDate,
    required this.eventType,
    required this.eventHost,
    required this.eventDuration,
   required this.attendees,
  });
}

List<EventList> eventDetails = [
 EventList(
eventTime: 'Today, 2:00 PM',
image: 'assets/red.png',
eventName: 'Design Thinking Group Design Thinking Group',
eventDate: 'Tue, Feb 28 - Wed, Mar 1, 2023 ',
eventType: 'Online',
eventHost: '- Event By SaaS Insider',
eventDuration: '2:00 - 2:30 PM IST',
attendees : '198 attendees',
 )
];

// class EventsOfObjects {
//   var items = EventList(
//       eventTime: 'Today, 2:00 PM',
//       image: 'assets/nature.png',
//       eventName: 'Design Thinking Group Design Thinking Group',
//       eventDate: 'Tue, Feb 28 - Wed, Mar 1, 2023 ',
//       eventType: 'Online',
//       eventHost: '- By Design System',
//       eventDuration: '2:00 - 2:30 PM IST');
// }
