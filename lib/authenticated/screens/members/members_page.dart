import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';


class MembersPage extends StatefulWidget {
  MembersPage({
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

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         // appBar: AppBar(
         //   automaticallyImplyLeading: true,
         // ),
         body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFF151318),
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
                        widget.firstName,
                        // dummyObject[0],
                        //   " First Name: ${firstName} Last Name: ${lastName} ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.lastName,
                        //   dummyObject[1],
                        //   " First Name: ${firstName} Last Name: ${lastName} ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
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
                          widget.email,
                          // "Email:  ${email}",
                          //   dummyObject[2],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
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
                          widget.phone,
                          //   "Phone:  ${phone}" ,
                          //  dummyObject[3],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
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
                        Icon(Icons.shopping_bag),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.jobFunction,
                          // "Job Role:  ${jobRole}",
                          //  dummyObject[4],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "@",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.companyName,
                          //   "Job Function:  ${jobFunction} @ Company Name: , ${companyName}" ,
                          // dummyObject[6],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      widget.jobRole,
                      // "Job Role:  ${jobRole}",
                      // dummyObject[7],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },

    ),
       );
  }
}

// Padding(
// padding: const EdgeInsets.only(left: 100),
// child: ElevatedButton(
// onPressed: () {
// Navigator.pop(context);
// },
// child: Text('Go Back'),
// style: ElevatedButton.styleFrom(
// backgroundColor: Colors.black,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// ),
// ),
//),
