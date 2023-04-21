class EventListSeeAll {
  late final String logo;
  late final String eventName;
  late final String eventDate ;
  late final String eventType;
  late final  String eventHost;

  EventListSeeAll({
    required this.logo,
    required this.eventName,
    required this.eventDate,
    required this.eventType,
    required this.eventHost,
  });
}

List<EventListSeeAll> eventDetailsSeeAll = [

  EventListSeeAll(
    logo: 'assets/saasstr.png',
    eventName: 'SaaStr Europa',
    eventDate: 'tue, Jun 6 - Wed, jun 7, 2023 ',
    eventType: 'In Person',
    eventHost: 'By SaaStr',
  ),

  EventListSeeAll(
    logo: 'assets/saasinsider.png',
    eventName: 'SaaS Insider India 2023',
    eventDate: 'Tue, july 20 - Wed, july 21, 2023 ',
    eventType: 'In person',
    eventHost: '- Event By SaaS Insider',
  ),

];
