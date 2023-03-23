import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:google_sign_in_firebase_fluttter_app/screens/settings_page.dart';


class MembersPage2 extends StatelessWidget {
  MembersPage2({
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


  // var obj = {
  //   "firstName": firstNameController.text,
  //   "lastName": lastNameController.text,
  //   "linkedinURL": linkedInController.text,
  //   "companyName": companyNameController.text,
  //   "email": emailTextController.text,
  //   "phone": phoneController.text,
  //   // "jobFunc": jobFunctionSelectedValue,
  //   // "jobRol": jobRoleSelectedValue,
  // };

  // static TextEditingController firstNameController =
  // TextEditingController();
  // static TextEditingController lastNameController = TextEditingController();
  // static TextEditingController phoneController = TextEditingController();
  // static TextEditingController emailTextController=
  // TextEditingController();
  // static TextEditingController companyNameController =
  // TextEditingController();
  // static TextEditingController linkedInController = TextEditingController();
  //

  static TextEditingController firstNameControllerEdit =
  TextEditingController();
  static TextEditingController lastNameControllerEdit = TextEditingController();
  static TextEditingController phoneControllerEdit = TextEditingController();
  static TextEditingController emailTextControllerEdit =
  TextEditingController();
  static TextEditingController companyNameControllerEdit =
  TextEditingController();
  static TextEditingController linkedInControllerEdit = TextEditingController();

//   List dummyObject = [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memebers Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return  Card(
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

            firstName,
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
            firstName,
       //   dummyObject[1],
          //   " First Name: ${firstName} Last Name: ${lastName} ",
          style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          ),
          ),
            Text(
             lastName,
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
            email,
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
            phone,
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
          Icon(Icons.home),
          SizedBox(
          width: 10,
          ),
          Text(
            companyName,
          //   "Job Function:  ${jobFunction} @ Company Name: , ${companyName}" ,
         // dummyObject[6],
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
            jobFunction,
          // "Job Role:  ${jobRole}",
        //  dummyObject[4],
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
            jobRole,
          // "Job Role:  ${jobRole}",
         // dummyObject[7],
          style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          ),
          ),
          ),
          SizedBox(
          height: 50,
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