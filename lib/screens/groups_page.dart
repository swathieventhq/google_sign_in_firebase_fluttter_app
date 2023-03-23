import 'package:flutter/material.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'Groups',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  ),
        ),
      ),
    );
  }
}
