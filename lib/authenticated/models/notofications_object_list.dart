

class NotificationsObjectList {
  late final String logo;
  late final String userName;
  late final String time ;
 // late final String content;


  NotificationsObjectList ({
    required this.logo,
    required this.userName,
    required this.time,
    //required this.content,
  });
}

class ListOfNoticationsObjects {
  static List notifications = [
    NotificationsObjectList(
      logo: 'assets/swathic.jpg',
      userName: 'Swathi Gowda : has started following you. ',
      time: '15m ',
     // content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/harish.jpg',
      userName: 'Harish Somasundar posted : A passionate coder with demonstrated experience in Full-stack web...  ',
      time: '1hr',
    //  content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/prajaktha.jpg',
      userName: 'Prajaktha Chaudhari : Liked your post.',
      time: '2hr',
     // content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/saasinsider.png',
      userName: 'A post by an employee at SaaS Insider is popular: Over the last week, Saas Insider team was onboarding...',
      time: '3hr',
     // content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/prajaktha.jpg',
      userName: 'Prajaktha chaudary has started following you.',
      time: '2d',
    //  content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/eventhq.png',
      userName: ' EventHQ is hiring for the roles, see you might have interested in.... ',
      time: '2d ',
     // content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/Akash.jpg',
      userName: 'Akash : has started following you.',
      time: '3d ',
     // content: 'In Person',
    ),
    NotificationsObjectList(
      logo: 'assets/red.png',
      userName: 'Nithya Kumar : Commented on your post.',
      time: '1w',
    //  content: 'In Person',
    ),
    // NotificationsObjectList(
    //   logo: 'assets/red.png',
    //   userName: 'SaaStr Europa',
    //   time: '1m',
    //  // content: 'In Person',
    // ),
  ];
}
