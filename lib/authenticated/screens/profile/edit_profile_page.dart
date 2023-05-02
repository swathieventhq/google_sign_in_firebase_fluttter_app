import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/members/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/events/events_listview_builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/profile_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/registration_page.dart';

import '../../../constants.dart';



class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

 // var variable =  await storage.read(key: 'saasInsiderSettings');

  void _doSomething(){}

 // late FlutterSecureStorage storage;

  // Future myFunction() async {
  //   var obj = {
  //     "firstName": firstNameController.text,
  //     "lastName": lastNameController.text,
  //     "linkedinURL": linkedInController.text,
  //     "companyName": companyNameController.text,
  //     "email": emailTextController.text,
  //     "phone": phoneController.text,
  //     "jobFunc": jobFunctionSelectedValue,
  //     "jobRol": jobRoleSelectedValue,
  //   };
  //    await storage.write(key: 'saasInsiderSettings', value: obj.toString());
  //    final person = await storage.read(key: 'saasInsiderSettings');
  //   print(person);
  //   final updatedValue = person! + ' updated';
  //   await storage.write(key: 'saasInsiderSettings', value: updatedValue);
  //   print(person);
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //    myFunction();
  // }

  Future launchWebsite() async {
    Uri url = Uri.parse("www.saasinsider.com/privacy-policy");
    await launchUrl(url);
  }

  SettingsPage() {
    jobFunctionSelectedValue = jobFunction[0];
    jobRoleSelectedValue = jobRole[0];
  }

  String? jobFunctionSelectedValue = '';
  String? jobRoleSelectedValue = '';

  bool? isChecked = false;
  bool? checkboxValue = false;

  final _formkey = GlobalKey<FormState>();
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController emailTextController = TextEditingController();
  static TextEditingController companyNameController = TextEditingController();
  static TextEditingController linkedInController = TextEditingController();

  List<String> jobFunction = [
    "Customer Success",
    "Founder",
    "Investor",
    "CXO",
    "Product",
    "Engineering",
    "Finance",
    "Marketing",
    "Operations",
    "Sales",
    "Other",
  ];

  List<String> jobRole = [
    "C Level",
    "VP/SVP",
    "Manager/Director",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(thickness: 1.0,color: kAppBarDividerColor),
        ),
        backgroundColor: Colors.black,
        title: Text('Edit Profile',style: TextStyle(color: kAppBarTitleColor) ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Container(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formkey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Text(
                  'First Name',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: TextFormField(
                    // onChanged: ,
                    controller: firstNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' First Name is Required*';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: kTextFieldHintTextColor),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xffffffff),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Last Name',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: TextFormField(
                    controller: lastNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Last Name is Required*';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(color: kTextFieldHintTextColor),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'LinkedIn URL',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: TextFormField(
                    controller: linkedInController,
                    validator: (value) {
                      String patttern =
                          r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";
                      RegExp regExp = new RegExp(patttern);
                      if (!regExp.hasMatch(value!)) {
                        return 'Please enter valid URL';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(

                      hintText: 'LinkedIn URL',
                      hintStyle: TextStyle(color: kTextFieldHintTextColor),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.business),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Eg : https://www.linkedin.com/in/saasinsider',
                  style: TextStyle(color: kTextFieldHintTextColor, fontSize: 12),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Company Name',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: TextFormField(
                    controller: companyNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Company Name is Required*';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Company Name',
                      hintStyle: TextStyle(color: kTextFieldHintTextColor),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.business,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: TextFormField(
                    controller: emailTextController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xffffffff),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'Email not valid' //form is not valid
                        : null, // form is valid
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: IntlPhoneField(
                    invalidNumberMessage: 'Invalid Phone Number',
                    flagsButtonPadding: EdgeInsets.only(left: 14),
                    dropdownIconPosition: IconPosition.trailing,
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Job Function',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: DropdownButtonFormField(
                    icon: Icon(
                      Icons.shopping_bag_sharp,
                      color: Color(0xffffffff),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'Job Function is required';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    hint: Text('Please Select'),
                    //   value: selectedValue,
                    items: jobFunction.map(
                          (e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        jobFunctionSelectedValue = val as String;
                        print(jobFunctionSelectedValue);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Job Role',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 8.0),
                  child: DropdownButtonFormField(
                    validator: (value) {
                      if (value == null) {
                        return 'Job Role is required';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    hint: Text('Please Select'),
                    //   value: selectedValue,
                    items: jobRole.map(
                          (e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        jobRoleSelectedValue = val as String;
                        print(jobRoleSelectedValue);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 37),
                  child: SizedBox(
                    height: 42,
                    width: 320,
                    child: ElevatedButton(
                      // onPressed: () async {
                      //   final isValidForm = _formkey.currentState!.validate();
                      //   if (isValidForm) {
                      //     myFunction();
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => EventsPage()),
                      //     );
                      //   }
                      // },

                      onPressed: () {
                        final isValidForm = _formkey.currentState!.validate();
                        if (isValidForm) {
                        //  myFunction();
                          isChecked! ? _doSomething : null;
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => MembersPage(
                                  firstName:
                                  firstNameController.text.toString(),
                                  lastName:
                                  lastNameController.text.toString(),
                                  email:
                                  emailTextController.text.toString(),
                                  phone: phoneController.text.toString(),
                                  companyName:
                                  companyNameController.text.toString(),
                                  jobRole: jobRoleSelectedValue.toString(),
                                  jobFunction:
                                  jobFunctionSelectedValue.toString(),
                                  linkedInURL:
                                  linkedInController.text.toString(),
                                )),
                                (route) => false,
                          );
                        };
                      },
                      // onPressed: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage2()));
                      // },

                      child: Text('Save'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> _launchUrl1(_url1) async {
    if (!await launchUrl(Uri.parse(_url1))) {
      throw 'Could not launch $_url1';
    }
  }
}

//  }

//     final isValidForm = formkey.currentState!.validate();
//     if (isValidForm) {

/*
                              ProfilePage(
                            firstName: firstNameController.text.toString(),
                            lastName: lastNameController.text.toString(),
                            email: emailTextController.text.toString(),
                            phone: phoneController.text.toString(),
                            companyName: companyNameController.text.toString(),
                            linkedInURL: linkedInController.text.toString(),
                            jobFunction: jobFunctionSelectedValue.toString(),
                            jobRole: jobRoleSelectedValue.toString(),
                          ),

                          */
