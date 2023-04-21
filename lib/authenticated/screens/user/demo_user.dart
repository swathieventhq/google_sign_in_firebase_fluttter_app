import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';

class DemoUser {
  final User user;
  final Token token;

  const DemoUser({
    required this.user,
    required this.token,
  });
}

// TODO: Replace tokens and users with your values.
const demoUsers = [
  DemoUser(
    user: User(
      id: 'swathicgowda',
      data: {
        'handle': '@swathigowda',
        'first_name': 'Swathi',
        'last_name': 'C Gowda',
        'full_name': 'Swathi C Gowda',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQGIKDvNzo-gzg/profile-displayphoto-shrink_200_200/0/1681977967254?e=1687392000&v=beta&t=3G8yC4A5Nsy8zH2e82eatEAhYvrX3KHr1u89AwMjBDA',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic3dhdGhpY2dvd2RhIn0.9l1qcOaeWHEyCtJ57kfuqWHCFdLQKlZDwSvb4-rOuRQ'),
  ),

  DemoUser(
    user: User(
      id: 'harish',
      data: {
        'handle': '@harishsomasundar',
        'first_name': 'Harish',
        'last_name': 'Somasundar',
        'full_name': 'Harish Somasundar',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQFbg3pdth8NJA/profile-displayphoto-shrink_200_200/0/1675253428828?e=1687392000&v=beta&t=1e_Wd8ROkVwMOgKWg1RsftUoePwu_xG_r4tM28WXS3I',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiaGFyaXNoIn0.WYYuhdSFbhOwY8hPKgj3EM-d5slgHME4rK0cFa7cBnM',
    ),
  ),

  // DemoUser(
  //   user: User(
  //     id: 'harishsomasundar',
  //     data: {
  //       'handle': '@harishsomasundar',
  //       'first_name': 'Harish',
  //       'last_name': 'Somasundar',
  //       'full_name': 'Harish Somasundar',
  //       'profile_image': 'https://media.licdn.com/dms/image/D5603AQFbg3pdth8NJA/profile-displayphoto-shrink_200_200/0/1675253428828?e=1687392000&v=beta&t=1e_Wd8ROkVwMOgKWg1RsftUoePwu_xG_r4tM28WXS3I',
  //       'posted_in': 'SaaS Insider',
  //     },
  //   ),
  //   token: Token(
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiaGFyaXNoc29tYXN1bmRhciJ9.rDQ_BpRCtCOSYk8h5QWMiLEXiglmcRPLd4WP0LwQrug'),
  // ),

  DemoUser(
    user: User(
      id: 'akash',
      data: {
        'handle': '@akash',
        'first_name': 'Akash',
        'last_name': 'Kumar',
        'full_name': 'Akash kumar ',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQE3wpv0vhJscg/profile-displayphoto-shrink_200_200/0/1672222717639?e=1687392000&v=beta&t=Ql9-T5nQTLdijH5XFSPAPchXY9JQSYeMlXVGAm-jlrQ',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiYWthc2gifQ.JCnFqEFMe4Q_EXlOalHDb_-LfmCvlXWY3UX-4zW5BXk'),
  ),

  DemoUser(
    user: User(
      id: 'prajakthachaudhari',
      data: {
        'handle': '@prajakthchaudhari',
        'first_name': 'prajaktha',
        'last_name': 'chaudhari',
        'full_name': 'Prajaktha Chaudhari ',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQF5OoxCj3hnzQ/profile-displayphoto-shrink_200_200/0/1667823945097?e=1687392000&v=beta&t=B9OCP7Vp7A_jo9McH6KEYnnFiyjt4E1kCrwACpoj-lo',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoicHJhamFrdGhhY2hhdWRoYXJpIn0.VR2ygQ9JbcZ9ZVfa-kFOvux36PnYE4B3Mmhk4b4AafM'),
  ),

  DemoUser(
    user: User(
      id: 'eventhq',
      data: {
        'handle': '@eventhq',
        'first_name': 'event',
        'last_name': 'hq',
        'full_name': 'Event HQ ',
        'profile_image':
            'https://media.licdn.com/dms/image/C560BAQHMdrOBwVaG2Q/company-logo_100_100/0/1668953490858?e=1689811200&v=beta&t=bkYATdTlgr8LhVb6PUVPlVeFshmmgiRU1OW2qJlqKoo',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiZXZlbnRocSJ9.bmnT-aS-louf-EhFimguFiM2D3B8Es3ko5ZU5mfbXfU'),
  ),

  DemoUser(
    user: User(
      id: 'saasinsider',
      data: {
        'handle': '@saaasinsider',
        'first_name': 'saas',
        'last_name': 'insider',
        'full_name': 'SaaS Insider ',
        'profile_image':
            'https://media.licdn.com/dms/image/C4D0BAQEy2Ol3no4jxQ/company-logo_100_100/0/1602909333990?e=1689811200&v=beta&t=5VfYmBFyaTG2begN0xrxSs3j7HReHV5B56z5kEpvAiM',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic2Fhc2luc2lkZXIifQ.7y5wkw8Tho0hnXCC_Zck4M3WqRBjaRKBFVD1l2h7c_o'),
  ),

  DemoUser(
    user: User(
      id: 'dharshan',
      data: {
        'handle': '@darshan',
        'first_name': 'Dharshan',
        'last_name': 'Seenivasan',
        'full_name': 'Dharshan Seenivasan ',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQHXaRBAhstjOQ/profile-displayphoto-shrink_200_200/0/1680535120672?e=1687392000&v=beta&t=RSa1PU8AjS1IjrTxx2qK3CT2u2cvMRmOW1ZqJd1T9Dg',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiZGhhcnNoYW4ifQ.4WRZG3V4ZFQli2C_Jcv4K-Pp8gHE6juBL2jne20K5ok'),
  ),

  DemoUser(
    user: User(
      id: 'chameli',
      data: {
        'handle': '@chameli',
        'first_name': 'Chameli',
        'last_name': 'Kuduva',
        'full_name': 'Chameli Kuduva ',
        'profile_image':
            'https://media.licdn.com/dms/image/D5603AQGrE_kORshBlQ/profile-displayphoto-shrink_100_100/0/1669199454605?e=1687392000&v=beta&t=tlCIflf_CVfzZc7dboHZ1ac2WCWkOqWW1yMygXYn6ck',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiY2hhbWVsaSJ9.gpQKECC1pb4svWGK3MJQdqMQV9e9EEKsLhw4KsrcbHY'),
  ),
];

/// Extension method on Stream's [User] class - to easily access user data
/// properties used in this sample application.
extension UserData on User {
  String get handle => data?['handle'] as String? ?? '';
  String get firstName => data?['first_name'] as String? ?? '';
  String get lastName => data?['last_name'] as String? ?? '';
  String get fullName => data?['full_name'] as String? ?? '';
  String get profileImage => data?['profile_image'] as String? ?? '';
  String get postedIn => data?['posted_in'] as String? ?? '';
}
