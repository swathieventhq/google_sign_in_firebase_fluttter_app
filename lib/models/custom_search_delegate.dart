import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Swathi Gowda",
    "Harish Somasundar",
    "Darshan",
    "Akash",
    "Sanjay",
    "Adhi",
    "Hari pragadish",
    "Chameli Kuduva",
    "Noorul Faheem",
    "Swathi H C",
    "Prajaktha",
  ];

//  List<Members> members = allMembers;

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var members in searchTerms) {
      if (members.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(members);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var members in searchTerms) {
      if (members.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(members);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}


