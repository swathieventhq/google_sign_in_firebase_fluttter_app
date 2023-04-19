

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
      logo: 'assets/saasstr.png',
      eventName: 'SaaStr Europa',
      eventDate: 'tue, Jun 6 - Wed, jun 7, 2023 ',
      eventType: 'In Person',
      eventHost: 'By SaaStr',
    ),
    ObjectList(
        logo: 'assets/saasinsider.png',
        eventName: 'SaaS Insider India 2023',
        eventDate: 'tue, July 20 - Wed, july 21, 2023 ',
        eventType: 'In Person',
      eventHost: 'By SaaS Insider',
    ),
    ObjectList(
        logo: 'assets/inbound.png',
        eventName: 'Inbound 2023',
        eventDate: 'wed, sep 6 - sat, sep 9, 2023',
        eventType: 'In Person',
      eventHost: 'By Inbound',
    ),
    ObjectList(
        logo: 'assets/saasstr.png',
        eventName: 'SaaStr Scale Dec 2023',
        eventDate: ' Dec 2023 ',
        eventType: 'Online',
      eventHost: 'By SaaStr',
    ),
    ObjectList(
        logo: 'assets/inbound.png',
        eventName: 'Inbound 2022',
        eventDate: 'wed, sep 6 - sat, sep 10, 2022',
        eventType: 'Hybrid',
      eventHost: 'By Inbound',
    ),
    ObjectList(
        logo: 'assets/saasstr.png',
        eventName: 'SaaStr Annual Sep 2023',
        eventDate: 'Saturday , November 15 2023',
        eventType: 'In Person',
      eventHost: 'By Design System',
    ),
    ObjectList(
        logo: 'assets/saasinsider.png',
        eventName: 'Founder Investor Meetup',
        eventDate: 'wed, feb 8 2023',
        eventType: 'In Person',
      eventHost: 'By SaaS Insider',
    ),
    ObjectList(
        logo: 'assets/inbound.png',
        eventName: 'Inbound 2022',
        eventDate: 'wed, oct 12 - sat, oct 15, 2021',
        eventType: 'Online',
      eventHost: 'By Inbound',
    ),
    ObjectList(
      logo: 'assets/saasinsider.png',
      eventName: 'SaasInsider\s APAC launch',
      eventDate: 'thur, mar 31 2022',
      eventType: 'Online',
      eventHost: 'By SaaS Insider',
    ),
  ];
}
