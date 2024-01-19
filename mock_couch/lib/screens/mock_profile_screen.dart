// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mock_couch/models/mock_user.dart';

class MockProfileScreen extends StatelessWidget {
  const MockProfileScreen({super.key, required this.mockCurrentUser});

  final MockUser mockCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mockCurrentUser.username),
      ),
      body: Center(
        child: Text('You have ${mockCurrentUser.friendIds.length} friends'),
      ),
    );
  }
}
