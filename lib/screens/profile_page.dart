import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.companyName,
    required this.linkedInURL,
    required this.jobFunction,
    required this.jobRole,
  });

  String firstName;
  String lastName;
  String email;
  String phone;
  String companyName;
  String linkedInURL;
  String jobFunction;
  String jobRole;

  static TextEditingController firstNameControllerEdit =
      TextEditingController();
  static TextEditingController lastNameControllerEdit = TextEditingController();
  static TextEditingController phoneControllerEdit = TextEditingController();
  static TextEditingController emailTextControllerEdit =
      TextEditingController();
  static TextEditingController companyNameControllerEdit =
      TextEditingController();
  static TextEditingController linkedInControllerEdit = TextEditingController();

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List dummyObject = [
    'Swathi',
    'H C',
    'swathicgowda@gmail.com',
    '6363731676',
    'SaaS Insider',
    'https://www.linkedin.com/in/swathi-h-c-a04a44258/',
    'Engineer',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 40, bottom: 400),
        child: Container(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    dummyObject[0],
                    //   " First Name: ${firstName} Last Name: ${lastName} ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    dummyObject[1],
                    //   " First Name: ${firstName} Last Name: ${lastName} ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.saasinsider.com/'),
                    builder: (context, followlink) => IconButton(
                      onPressed: followlink,
                      icon: Icon(Icons.web),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      // "Email:  ${email}",
                      dummyObject[2],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      //   "Phone:  ${phone}" ,
                      dummyObject[3],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      //   "Job Function:  ${jobFunction} @ Company Name: , ${companyName}" ,
                      dummyObject[6],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "@",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      // "Job Role:  ${jobRole}",
                      dummyObject[4],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  // "Job Role:  ${jobRole}",
                  dummyObject[7],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
