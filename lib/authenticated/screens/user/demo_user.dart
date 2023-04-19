
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
      id: 'Swathi',
      data: {
        'handle': '@swathigowda',
        'first_name': 'Swathi',
        'last_name': 'Gowda',
        'full_name': 'Swathi Gowda',
        'profile_image': 'https://media.licdn.com/dms/image/D5603AQFurZwC4iVbuw/profile-displayphoto-shrink_200_200/0/1681895353817?e=1687392000&v=beta&t=uSTzbiTpezaHuEbK0KZyc2fX2nkdRLFdWXOUYilOdVE',
        'posted_in': 'EventHQ ',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic3dhdGhpZ293ZGEifQ.4s0gpDZnTIpsF4vd9XPw67CjfTYdIp_IGXefYTd5PsI'),
  ),
  DemoUser(
    user: User(
      id: 'Sahana',
      data: {
        'handle': '@SahanaC',
        'first_name': 'Sahana',
        'last_name': 'C Gowda',
        'full_name': 'Sahana C Gowda',
        'profile_image': 'https://avatars.githubusercontent.com/u/4250470?v=4',
        'posted_in': 'SaaS community',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiU2FoYW5hIn0.20Cxi3uiQyA0RqcFxAkqiQnCE-wMFZbk-Y4GgOf9pZI'),
  ),
  DemoUser(
    user: User(
      id: 'nithyakumar',
      data: {
        'handle': '@nithyakumar',
        'first_name': 'Nithya',
        'last_name': 'Kumar',
        'full_name': 'Nithya Kumar',
        'profile_image': 'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoibml0aHlha3VtYXIifQ.D_9061YxHTDj_vWuEKqnoNzoeceWoJ54PtGKZADi5WM'),
  ),

  DemoUser(
    user: User(
      id: 'harishsomasundar',
      data: {
        'handle': '@harishsomasundar',
        'first_name': 'Harish',
        'last_name': 'Somasundar',
        'full_name': 'Harish Somasundar',
        'profile_image': 'https://media.licdn.com/dms/image/D5603AQFbg3pdth8NJA/profile-displayphoto-shrink_200_200/0/1675253428828?e=1687392000&v=beta&t=1e_Wd8ROkVwMOgKWg1RsftUoePwu_xG_r4tM28WXS3I',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiaGFyaXNoc29tYXN1bmRhciJ9.rDQ_BpRCtCOSYk8h5QWMiLEXiglmcRPLd4WP0LwQrug'),
  ),

  DemoUser(
    user: User(
      id: 'akash',
      data: {
        'handle': '@akash',
        'first_name': 'Akash',
        'last_name': '',
        'full_name': 'Akash ',
        'profile_image': 'https://media.licdn.com/dms/image/D5603AQE3wpv0vhJscg/profile-displayphoto-shrink_200_200/0/1672222717639?e=1687392000&v=beta&t=Ql9-T5nQTLdijH5XFSPAPchXY9JQSYeMlXVGAm-jlrQ',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiYWthc2gifQ.JCnFqEFMe4Q_EXlOalHDb_-LfmCvlXWY3UX-4zW5BXk'
    ),
  ),

  DemoUser(
    user: User(
      id: 'prajakthachaudhari',
      data: {
        'handle': '@prajakthchaudhari',
        'first_name': 'prajaktha',
        'last_name': 'chaudhari',
        'full_name': 'Prajaktha Chaudhari ',
        'profile_image': 'https://media.licdn.com/dms/image/D5603AQF5OoxCj3hnzQ/profile-displayphoto-shrink_200_200/0/1667823945097?e=1687392000&v=beta&t=B9OCP7Vp7A_jo9McH6KEYnnFiyjt4E1kCrwACpoj-lo',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoicHJhamFrdGhhY2hhdWRoYXJpIn0.VR2ygQ9JbcZ9ZVfa-kFOvux36PnYE4B3Mmhk4b4AafM'
    ),
  ),

  DemoUser(
    user: User(
      id: 'eventhq',
      data: {
        'handle': '@eventhq',
        'first_name': 'event',
        'last_name': 'hq',
        'full_name': 'Event HQ ',
        'profile_image': 'https://media.licdn.com/dms/image/C560BAQHMdrOBwVaG2Q/company-logo_100_100/0/1668953490858?e=1689811200&v=beta&t=bkYATdTlgr8LhVb6PUVPlVeFshmmgiRU1OW2qJlqKoo',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiZXZlbnRocSJ9.bmnT-aS-louf-EhFimguFiM2D3B8Es3ko5ZU5mfbXfU'
    ),
  ),

  DemoUser(
    user: User(
      id: 'saasinsider',
      data: {
        'handle': '@saaasinsider',
        'first_name': 'saas',
        'last_name': 'insider',
        'full_name': 'SaaS Insider ',
        'profile_image': 'https://media.licdn.com/dms/image/C4D0BAQEy2Ol3no4jxQ/company-logo_100_100/0/1602909333990?e=1689811200&v=beta&t=5VfYmBFyaTG2begN0xrxSs3j7HReHV5B56z5kEpvAiM',
        'posted_in': 'SaaS Insider',
      },
    ),
    token: Token(
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoic2Fhc2luc2lkZXIifQ.7y5wkw8Tho0hnXCC_Zck4M3WqRBjaRKBFVD1l2h7c_o'
    ),
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
  String get postedIn  => data?['posted_in'] as String? ?? '';
}
