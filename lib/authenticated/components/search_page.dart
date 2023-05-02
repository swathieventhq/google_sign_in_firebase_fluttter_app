import 'package:flutter/material.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/models/search_member_list.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/members/members_page.dart';
import 'package:google_sign_in_firebase_fluttter_app/authenticated/screens/profile/profile_page.dart';

import '../../constants.dart';
//import 'package:google_sign_in_firebase_fluttter_app/screens/new_profile_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Members> members = allMembers;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(
              thickness: 1.0,
              color: kAppBarDividerColor,
            ),
          ),
          title: SizedBox(
            width: double.infinity,
            height: 31,
            child: TextField(
              onChanged: searchMember,
              controller: searchController,
              cursorColor: kSecondaryColor,
              decoration: InputDecoration(
                focusColor: kSecondaryColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: kSecondaryColor,
                  ),
                ),
                filled: true,
             //   fillColor: Color(0xff514C5F),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 18,
                  color: kSecondaryColor,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    size: 16,
                    color: kSecondaryColor,
                  ),
                  onPressed: () {
                    searchController.clear();
                  },
                ),
                hintText: 'Search...',
                contentPadding: EdgeInsets.only(top: 7),
                // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                 // borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  final member = members[index];
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          member.assetImage,
                        ),
                      ),
                      title: Text(member.name),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                          // NewProfilePage(),
                        ),
                      ),
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }

  void searchMember(String query) {
    final suggestions = allMembers.where((member) {
      //  var member;
      final memberName = member.name.toLowerCase();
      final input = query.toLowerCase();
      return memberName.contains(input);
    }).toList();

    setState(() {
      members = suggestions;
    });
  }
}
